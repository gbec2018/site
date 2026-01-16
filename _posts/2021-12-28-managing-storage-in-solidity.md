---
layout: post
title: "【動画で学ぶブロックチェーン】SolidityにおけるStorageの管理 - 中城元臣氏"
date: 2021-12-28
categories: [video]
youtube_id: qRR1X0NQSLM
thumbnail: /assets/images/2021/12/img-be8388fb.jpeg
tags: ["blockchain", "Ethereum", "中城元臣"]
---

Chaintope 社の Chief Ethereum Researcher を務める中城氏によるgo-ethereumのデータ取得方法についての解説です。  

{% include youtube.html id="qRR1X0NQSLM" %}

**※動画内で構造体(Struct)の特徴として、Storage容量のfitting効果を説明していますが、動画公開時の最新バージョンであるv0.8.11では、Structに限らずContractで定義されたストレージ変数の全てに対して、Storageのfittingが行われます。**（参考：[https://docs.soliditylang.org/en/v0.8.11/internals/layout_in_storage.html](https://docs.soliditylang.org/en/v0.8.11/internals/layout_in_storage.html))

#### この動画で学べる事

- ContractとStorage
- SolidityとStorage
- fixed-size type
- non-fixed-size type
- mapping type
- struct type
