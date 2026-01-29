#!/usr/bin/env ruby
# frozen_string_literal: true

require 'yaml'
require 'date'

class PostValidator
  REQUIRED_FIELDS = %w[title date tags].freeze

  def initialize(posts_dir, assets_dir)
    @posts_dir = posts_dir
    @assets_dir = assets_dir
    @errors = []
    @warnings = []
    @known_tags = []
    @validated_count = 0
  end

  def validate_all
    post_files = Dir.glob(File.join(@posts_dir, '*.md'))

    if post_files.empty?
      @errors << "No post files found in #{@posts_dir}"
      return false
    end

    # Filter to video category only
    video_posts = post_files.select do |file|
      frontmatter = parse_frontmatter(file)
      next false unless frontmatter

      categories = frontmatter['categories'] || []
      categories = [categories] if categories.is_a?(String)
      categories.map(&:downcase).include?('video')
    end

    # First pass: collect all tags
    video_posts.each do |file|
      frontmatter = parse_frontmatter(file)
      next unless frontmatter

      tags = frontmatter['tags'] || []
      tags.each { |tag| @known_tags << tag }
    end

    # Second pass: validate each post
    video_posts.each do |file|
      validate_post(file)
    end

    @validated_count = video_posts.length

    # Check for tag inconsistencies
    check_tag_consistency

    print_results
    @errors.empty?
  end

  private

  def parse_frontmatter(file)
    content = File.read(file)
    return nil unless content.start_with?('---')

    parts = content.split('---', 3)
    return nil if parts.length < 3

    YAML.safe_load(parts[1], permitted_classes: [Date, Time])
  rescue Psych::SyntaxError => e
    @errors << "[#{File.basename(file)}] Invalid YAML in frontmatter: #{e.message}"
    nil
  end

  def validate_post(file)
    filename = File.basename(file)
    frontmatter = parse_frontmatter(file)
    content = File.read(file)

    return unless frontmatter

    # Check required fields
    validate_required_fields(filename, frontmatter)

    # Check date consistency
    validate_date(filename, frontmatter)

    # Check youtube_id and include consistency
    validate_youtube(filename, frontmatter, content)

    # Check thumbnail exists
    validate_thumbnail(filename, frontmatter)
  end

  def validate_required_fields(filename, frontmatter)
    REQUIRED_FIELDS.each do |field|
      if frontmatter[field].nil? || frontmatter[field].to_s.strip.empty?
        @errors << "[#{filename}] Missing required field: #{field}"
      end
    end

    # tags should be an array
    if frontmatter['tags'] && !frontmatter['tags'].is_a?(Array)
      @errors << "[#{filename}] 'tags' should be an array"
    end
  end

  def validate_date(filename, frontmatter)
    # Extract date from filename (YYYY-MM-DD-title.md)
    match = filename.match(/^(\d{4}-\d{2}-\d{2})-/)
    return unless match

    file_date = match[1]
    front_date = frontmatter['date']

    return unless front_date

    front_date_str = case front_date
                     when Date, Time
                       front_date.strftime('%Y-%m-%d')
                     when String
                       front_date[0..9]
                     else
                       return
                     end

    if file_date != front_date_str
      @errors << "[#{filename}] Date mismatch: filename=#{file_date}, frontmatter=#{front_date_str}"
    end
  end

  def validate_youtube(filename, frontmatter, content)
    has_youtube_id = !frontmatter['youtube_id'].nil? && !frontmatter['youtube_id'].to_s.strip.empty?
    has_youtube_include = content.include?('{% include youtube.html')

    if has_youtube_id && !has_youtube_include
      @errors << "[#{filename}] Has youtube_id but missing {% include youtube.html %}"
    end

    if has_youtube_include && !has_youtube_id
      @errors << "[#{filename}] Has {% include youtube.html %} but missing youtube_id in frontmatter"
    end
  end

  def validate_thumbnail(filename, frontmatter)
    thumbnail = frontmatter['thumbnail']
    return unless thumbnail

    # Remove leading slash for file path
    thumbnail_path = thumbnail.sub(%r{^/}, '')
    full_path = File.join(File.dirname(@posts_dir), thumbnail_path)

    unless File.exist?(full_path)
      @errors << "[#{filename}] Thumbnail not found: #{thumbnail}"
    end
  end

  def check_tag_consistency
    # Group tags by lowercase version
    tag_groups = @known_tags.group_by(&:downcase)

    tag_groups.each do |_key, variants|
      unique_variants = variants.uniq
      if unique_variants.length > 1
        @warnings << "Tag inconsistency: #{unique_variants.join(', ')}"
      end
    end
  end

  def print_results
    if @errors.any?
      puts "ERRORS (#{@errors.length}):"
      @errors.each { |e| puts "  - #{e}" }
      puts
    end

    if @warnings.any?
      puts "WARNINGS (#{@warnings.length}):"
      @warnings.each { |w| puts "  - #{w}" }
      puts
    end

    if @errors.empty? && @warnings.empty?
      puts "All #{@validated_count} video posts validated successfully!"
    elsif @errors.empty?
      puts "#{@validated_count} video posts validated with #{@warnings.length} warning(s)"
    else
      puts "Validation failed with #{@errors.length} error(s) (#{@validated_count} video posts checked)"
    end
  end
end

# Run validation
posts_dir = ARGV[0] || '_posts'
assets_dir = ARGV[1] || 'assets'

validator = PostValidator.new(posts_dir, assets_dir)
exit(validator.validate_all ? 0 : 1)
