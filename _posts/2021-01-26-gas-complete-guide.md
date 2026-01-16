---
layout: post
title: "【動画で学ぶブロックチェーン】【Ethereum】Gas Complete Guide—中城元臣氏"
date: 2021-01-26
categories: [video]
youtube_id: s7KovnahQSY
thumbnail: /assets/images/2021/01/img-f182dc1a.jpeg
tags: ["blockchain", "Ethereum", "gas cost", "gbec", "中城元臣"]
---

{% include youtube.html id="s7KovnahQSY" %}

Chaintope 社の Chief Ethereum Researcher を務める中城氏によるEthereumのGasについての解説です。

#### # この動画で学べる事

・Gasの目的

・Gas Cost

・Gasの計算方法

・Costの変遷

・Gas Cost引き上げの問題

・まとめ

#### 【参考資料】

動画中に出てきたリンク

2. Gas Cost(動画内p.8参照)

- go-ethereumの実装 : [https://github.com/ethereum/go-ethereum/blob/6f4cccf8d27265e197261c717e95ae10e30d7abe/params/protocol_params.go](https://github.com/ethereum/go-ethereum/blob/6f4cccf8d27265e197261c717e95ae10e30d7abe/params/protocol_params.go)
- OPCODEのGas Cost一覧 : [https://github.com/crytic/evm-opcodes](https://github.com/crytic/evm-opcodes)
- Yellow Paperで定義 : [https://ethereum.github.io/yellowpaper/paper.pdf](https://ethereum.github.io/yellowpaper/paper.pdf) のAppendix G

3. Gasの計算方法(動画内p.18参照)

- @truffle/code-utils [https://www.npmjs.com/package/@truffle/code-utils](https://www.npmjs.com/package/@truffle/code-utils)
- Remix - Ethereum IDE [https://remix.ethereum.org](https://remix.ethereum.org/)

4. Costの変遷

Gas Cost見直しのProporsal（導入されたもの）(動画内p.21参照)

- DoSアタックに対応するためにGas消費量を引き上げ : [https://github.com/ethereum/EIPs/blob/master/EIPS/eip-150.md](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-150.md)
- zk-SNARKsに関係するpre compiled contractのGas消費量を引き下げ : [https://github.com/ethereum/EIPs/blob/master/EIPS/eip-1108.md](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-1108.md)
- Trie sizeに依存するものに関してはGas消費量を引き上げ : [https://github.com/ethereum/EIPs/blob/master/EIPS/eip-1884.md](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-1884.md)
- Transactionのinput data(=call data)のGas消費量を引き下げ: [https://github.com/ethereum/EIPs/blob/master/EIPS/eip-2028.md](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-2028.md)
- SSTOREのコストのネッティング : [https://github.com/ethereum/EIPs/blob/master/EIPS/eip-2200.md](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-2200.md)

Gas Cost見直しのProporsal（導入されてないもの抜粋）(動画内p.21参照)

- PreCompiled Contractの呼び出しコストの削減。CALLとの二重取りをなくす提案。: [https://eips.ethereum.org/EIPS/eip-1109](https://eips.ethereum.org/EIPS/eip-1109)  

- mGasの提案。ADD, SUBなどすごく軽い処理用により小さなGas Unitを設ける提案。: [https://eips.ethereum.org/EIPS/eip-2045](https://eips.ethereum.org/EIPS/eip-2045)  

5. Gas Cost引き上げの問題(動画内p.24参照)

- 実際の問題の記事 [Ethereum’s Istanbul Upgrade Will Break 680 Smart Contracts on Aragon(Oct 1, 2019 at 12:35 a.m.)](https://www.coindesk.com/ethereums-istanbul-upgrade-will-break-680-smart-contracts-on-aragon)
