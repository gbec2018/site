---
layout: post
title: "【動画で学ぶブロックチェーン】【Ethereum】block.gasLimitとMiner戦略 - 中城元臣氏"
date: 2022-09-17
categories: [video]
youtube_id: FyXxEa4FHA8
thumbnail: /assets/images/2022/09/img-264e4af2.jpeg
tags: ["blockchain", "Ethereum", "中城元臣"]
---

Chaintope 社の Chief Ethereum Researcher を務める中城氏によるblock.gasLimitとMiner戦略についての解説です。

{% include youtube.html id="FyXxEa4FHA8" %}

#### この動画で学べる事

- block.gasLimitの仕様（Yellow Paper）
- 実装（go-ethereum） 
- 実データのプロット（gasLimit、gasUsed、TxGasLimitsの総計）
- Minerの戦略 

#### 参考資料

動画中に出てきたリンク

- P3.参照  
[https://ethereum.github.io/yellowpaper/paper.pdf](https://ethereum.github.io/yellowpaper/paper.pdf)  

- P5.参照  
[https://github.com/ethereum/go-ethereum/blob/v1.10.21/core/state_transition.go#L275-L289](https://github.com/ethereum/go-ethereum/blob/v1.10.21/core/state_transition.go#L275-L289)  
[https://github.com/ethereum/go-ethereum/blob/v1.10.21/core/gaspool.go#L39-L45](https://github.com/ethereum/go-ethereum/blob/v1.10.21/core/gaspool.go#L39-L45)  

- [](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbHRVUGdmWVJ0Unp6NW5TUGpJVWRUdVYzLWZqZ3xBQ3Jtc0treHdJLXBOS0xVdHZ5cTczQzRINDhITFRqZXNxdFpvb2FfQ0kwQUpUOVUyblZBNHAtOC1vXzBMM3BrOVh2dkR2MGdRNmFLeFFsYlVBa0pVcTZrTHlZak95MUxSVFRuS05tZ1otN3cybmNNM3M2OVJUTQ&q=https%3A%2F%2Fgithub.com%2Fethereum%2Fgo-ethereum%2Fblob%2Fv1.10.21%2Fcore%2Fstate_transition.go%23L275-L289&v=FyXxEa4FHA8) P9.参照  
[https://github.com/nakajo2011/ethereum_tools/tree/main/jupyterhome/block_gas_analyse/miner_storategy_graph](https://github.com/nakajo2011/ethereum_tools/tree/main/jupyterhome/block_gas_analyse/miner_storategy_graph)  
[](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbHF6S1BpNnpTdXp1Vlc4d3FJMDhjUV93enRUUXxBQ3Jtc0tsQmZod1d6cExYTkpEZzl4WTJ6X1JfclRCZnpkWWVDb0E4aVdyb0ZTQl9jU0FnNHlkUVJpSVZUMkItZFlVd2phaE9pcWJrWElta1pBYmpsc1ZJOXBDN2FqTFlNRmVHdERtQWdlejlud3dGWk5NcjlJdw&q=https%3A%2F%2Fgithub.com%2Fnakajo2011%2Fethereum_tools%2Ftree%2Fmain%2Fjupyterhome%2Fblock_gas_analyse%2Fminer_storategy_graph&v=FyXxEa4FHA8)
