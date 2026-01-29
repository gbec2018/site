---
layout: post
title: "【動画で学ぶブロックチェーン】go-ethereumのデータ取得方法 - 中城元臣氏"
date: 2021-12-16
categories: [video]
youtube_id: zLf5494yqEs
thumbnail: /assets/images/2021/12/img-286e5b4e.jpeg
tags: ["blockchain", "Ethereum", "中城元臣"]
---

Chaintope 社の Chief Ethereum Researcher を務める中城氏によるgo-ethereumのデータ取得方法についての解説です。  

{% include youtube.html %}

#### この動画で学べる事

- データ取得方法
- JSON-RPC
- Level DB
- GrapgQL

【動画中に出てきたリンク】

- JSON-RPC(p.4)

- gethで定義されているJSON-RPC：  
[https://geth.ethereum.org/docs/rpc/server](https://geth.ethereum.org/docs/rpc/server)  

- openEthereumで定義されているJSON-RPC  
[https://openethereum.github.io/JSONRPC](https://openethereum.github.io/JSONRPC)
- Level DB(p.5)

- go-ethereum/core/rawdb/schema.go(L78-L97)  
[https://github.com/ethereum/go-ethereum/blob/v1.10.8/core/rawdb/schema.go#L78-L97](https://github.com/ethereum/go-ethereum/blob/v1.10.8/core/rawdb/schema.go#L78-L97)
- go-ethereum/core/rawdb/freezer_table.go  
[https://github.com/ethereum/go-ethereum/blob/v1.10.8/core/rawdb/freezer_table.go](https://github.com/ethereum/go-ethereum/blob/v1.10.8/core/rawdb/freezer_table.go)  

- GrapgQL(p.6)

- Geth v1.9.0 (Ethereum Foundation Blog)  
[https://blog.ethereum.org/2019/07/10/geth-v1-9-0/](https://blog.ethereum.org/2019/07/10/geth-v1-9-0/)
- EIP-1767: GraphQL interface to Ethereum node data  
[https://eips.ethereum.org/EIPS/eip-1767](https://eips.ethereum.org/EIPS/eip-1767)
