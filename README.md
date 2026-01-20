# GBEC - Go Blockchain Engineers Community

ブロックチェーンエンジニアのためのコミュニティサイト[GBECのWebサイト](https://goblockchain.network/)です。

## サイト構成

- **Jekyll** - 静的サイトジェネレーター
- **GitHub Pages** - ホスティング
- **GitHub Actions** - 自動ビルド・デプロイ

## ローカル開発環境のセットアップ

### 必要なもの

- Ruby 3.4以上
- Bundler

### インストール

```bash
# リポジトリをクローン
git clone git@github.com:gbec2018/site.git
cd site

# 依存関係をインストール
bundle install
```

### ローカルサーバーの起動

```bash
bundle exec jekyll serve
```

ブラウザで http://localhost:4000/ にアクセスしてプレビューできます。

### Dockerを使う場合

Rubyのインストールが不要で、Docker環境があればすぐに開発を始められます。

```bash
# 起動
docker compose up

# バックグラウンドで起動
docker compose up -d

# 停止
docker compose down

# リビルド（Gemfile変更時など）
docker compose build --no-cache
```

ブラウザで http://localhost:4000/ にアクセスしてプレビューできます。
ファイルを編集すると自動的にリビルドされます。

## 投稿の追加方法

### 1. 記事ファイルの作成

`_posts` ディレクトリに以下の命名規則でMarkdownファイルを作成します：

```
YYYY-MM-DD-slug.md
```

例: `2026-01-16-frost.md` → URL: `/2026/01/frost/`

**注意**: `slug`部分がそのままURLのパスになります。英数字とハイフンのみを使用してください。

### 2. Front Matterの記述

ファイルの先頭に以下のメタデータを記述します：

```yaml
---
layout: post
title: "【動画で学ぶブロックチェーン】タイトル - 講師名"
date: 2026-01-16
categories: [video]
youtube_id: YouTubeの動画ID
thumbnail: /assets/images/2026/01/thumbnail.png
tags: ["Bitcoin", "Ethereum", "講師名"]
---
```

| フィールド | 説明 |
|-----------|------|
| `layout` | 常に `post` を指定 |
| `title` | 記事タイトル |
| `date` | 公開日（YYYY-MM-DD形式） |
| `categories` | カテゴリ（通常は `[video]`） |
| `youtube_id` | YouTube動画のID（URLの `v=` 以降の部分） |
| `thumbnail` | サムネイル画像のパス |
| `tags` | タグの配列（技術名、講師名など） |

### 3. 本文の記述

Front Matterの下に本文をMarkdown形式で記述します：

```markdown
---
(Front Matter)
---

{% include youtube.html id="YouTubeの動画ID" %}

動画の説明文をここに記述します。

## この動画で学べること

- 学習ポイント1
- 学習ポイント2
- 学習ポイント3

## 関連リンク

- [リンク1](https://example.com)
- [リンク2](https://example.com)
```

### 4. サムネイル画像の配置

サムネイル画像は以下のディレクトリに配置します：

```
assets/images/YYYY/MM/filename.png
```

例: `assets/images/2026/01/new-article-thumbnail.png`

**注意**: ファイル名は英数字のみを使用してください（日本語不可）。

### 5. プレビューと公開

#### ローカルでプレビュー

```bash
bundle exec jekyll serve
```

ブラウザで http://localhost:4000/ にアクセスして確認します。

コンテンツの作成ができたらPRを作成し、解説担当者をレビュアーに割り当ててください。

mainブランチへのマージ後、GitHub Actionsが自動でビルド・デプロイを実行します。

## ディレクトリ構成

```
.
├── _config.yml          # Jekyll設定ファイル
├── _layouts/            # レイアウトテンプレート
│   ├── default.html     # 基本レイアウト
│   ├── post.html        # 投稿ページ用
│   └── tag.html         # タグページ用
├── _includes/           # 再利用可能なコンポーネント
│   └── youtube.html     # YouTube埋め込み用
├── _posts/              # 投稿記事（Markdown）
├── assets/
│   ├── css/             # スタイルシート
│   └── images/          # 画像ファイル
├── about/               # Aboutページ
├── contributor/         # Contributorページ
└── index.html           # トップページ
```

## タグについて

記事に設定したタグは自動でタグページが生成されます。タグページのURLは以下の形式です：

```
/tag/タグ名/
```

例: `/tag/bitcoin/`, `/tag/ethereum/`

## トラブルシューティング

### ビルドエラーが発生する場合

```bash
# キャッシュをクリアして再ビルド
bundle exec jekyll clean
bundle exec jekyll build
```

### 画像が表示されない場合

- ファイルパスが正しいか確認
- ファイル名に日本語が含まれていないか確認
- `relative_url` フィルターを使用しているか確認

## ライセンス

[MIT License](LICENSE)
