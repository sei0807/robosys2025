# freqコマンド
![test](https://github.com/sei0807/robosys2025/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだ単語の頻度を数え、出現回数が多い順に出力するコマンドです。

## 使用例

### 1.文字列を直接渡す
`echo` コマンドを使って、集計したい文字を直接渡すことができます。

```bash
$ echo "Dog Cat Dog" | ./freq
Dog 2
Cat 1
```

### 2.ファイルの内容を集計する。
`cat` コマンドと組み合わせることで、テキストファイル内の単語数を数えることができます。

```bash
$ cat sample.txt | ./freq
```
### 3.手動で集計する。
コマンドを実行した後入力待ち状態になります。集計したい単語の入力が終わったら`Ctrl+D `を押すと、集計結果が表示されます。

```bash
$ ./freq
apple
banana
apple
(ここで Ctrl+D を押す)

apple 2
banana 1
```

## テスト
本パッケージは、GitHub Actionsおよびローカルのテストスクリプト `test.bash` を用いて動作確認を行っています。
手元の環境でテストを実行するには、以下のコマンドを入力してください。

```bash
$ ./test.bash
OK
```

## インストール時の注意
スクリプトに実行権限がない場合は、以下のコマンドを実行してください。

```bash
$ chmod +x freq
```

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7〜3.10

## テスト環境
- Ubuntu 22.04.5 LTS

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布お
よび使用が許可されます．
- © 2025 Seiya Ohata

## 謝辞
このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
[ryuichiueda/slides_marp/robosys2025](https://github.com/ryuichiueda/slides_marp)

