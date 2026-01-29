---
layout: post
title: "【動画で学ぶブロックチェーン】【Ethereum】Mining Rewardー中城元臣氏"
date: 2020-11-16
categories: [video]
youtube_id: xxXu8IR5yVo
thumbnail: /assets/images/2020/11/img-c9107c85.jpeg
tags: ["Ethereum", "Mining Reward", "中城元臣"]
---

{% include youtube.html %}

Chaintope 社の Chief Ethereum Researcher を務める中城氏によるMining Rewardについての解説です。

**※動画内では、2020年5月のBitcoinマイニング報酬を12.5BTCと説明しておりますが、6.25BTCの間違いです。**

# この動画で学べる事

 ・Mining Reward

 ・BitcoinのMining Reward 

・EthereumのMining Reward

# go-ethereumによる実装

- [minner reward処理](https://github.com/ethereum/go-ethereum/blob/master/consensus/ethash/consensus.go#L622)
- [minner reward処理を呼び出すタイミング部分（新しいBlockをチェックした後に報酬が支払われている）](https://github.com/ethereum/go-ethereum/blob/cf856ea1ad96ac39ea477087822479b63417036a/core/state_processor.go#L85)
