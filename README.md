# freqコマンド
![test](https://github.com/sei0807/robosys2025/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだ単語の頻度を数え、出現回数が多い順に出力するコマンドです。

## 使用例

###　1.文字列を直接渡す
`echo` コマンドを使って、集計したい文字を直接渡すことができます。

```bash
$ echo "Dog Cat Dog" | ./freq
Dog 2
Cat 1
```

###　2.ファイルの内容を集計する。
`cat` コマンドと組み合わせることで、テキストファイル内の単語数を数えることができます。

```bash
$ cat sample.txt | ./freq
```
###　3.手動で集計する。
コマンドを実行した後、キーボードから直接文字を入力することもできます。 入力が終わったら `Ctrl+D `を押して終了します。

```bash
$ ./freq
apple
banana
apple
(ここで Ctrl+D を押す)
apple 2
banana 1
```


- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージは，robosys_2025由来のコード（© 2025 Ryuichi Ueda）を利用しています
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたもの  です．
- [ryuichiueda/my_slides robosys_2025](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2025)

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7〜3.10

## テスト環境
- Ubuntu 22.04.5 LTS

 © 2025 Seiya Ohata
