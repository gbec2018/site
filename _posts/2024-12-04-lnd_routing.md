---
layout: post
title: "【動画で学ぶブロックチェーン】LNDのルーティングアルゴリズム -　深田涼太氏"
date: 2024-12-04
categories: [video]
youtube_id: Vdf2bcs5nM8
thumbnail: /assets/images/2024/11/img-3b2bea2c.jpeg
tags: ["Bitcoin", "LND", "Lightning Network", "深田涼太"]
---

HAW International エンジニア深田氏によるLNDのルーティングアルゴリズムについての解説です。

{% include youtube.html %}

#### この動画で学べる事

- LNDのルーティングアルゴリズムについて
- ダイクストラ法について
- 手数料とタイムロックの重みの計算
- 成功確率の計算
-  findPathによる重み計算

#### 参考資料

動画中に出てきたリンク

- P3. ダイクストラ法について

[https://github.com/bitcoin/bips/blob/master/bip-0331.mediawiki](https://ja.wikipedia.org/wiki/%E3%83%80%E3%82%A4%E3%82%AF%E3%82%B9%E3%83%88%E3%83%A9%E6%B3%95)

- p.6手数料とタイムロックの重み(weight)の計算

[https://github.com/lightningnetwork/lnd/blob/v0.18.3-beta/routing/pathfind.go#L379-L395](https://github.com/lightningnetwork/lnd/blob/v0.18.3-beta/routing/pathfind.go#L379-L395)

- p.7 成功確率の計算

[https://github.com/lightningnetwork/lnd/blob/master/routing/missioncontrol.go](https://github.com/lightningnetwork/lnd/blob/master/routing/missioncontrol.go)

- p.8findPathによる重み計算

[https://github.com/lightningnetwork/lnd/blob/v0.18.3-beta/routing/pathfind.go#L1343-L1396](https://github.com/lightningnetwork/lnd/blob/v0.18.3-beta/routing/pathfind.go#L1343-L1396)
