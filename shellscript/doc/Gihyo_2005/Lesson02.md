# Lesson02 シェル変数

シェル変数はシェルに予め決められているものがある。
また、ユーザーによっての定義も可能

```bash
variable=value
```

ただし、代入演算子の前後に空白は不可

この定義は表示されているターミナルのみであり、別ターミナルでは定義されていない。

変数を削除するには`unset`を使う

```bash
unset variable
```

参照するには`echo`を用いる

```bash
a1=date    #代入
$ echo "$a1"   #a1に代入された値を参照
$ $a1        #a1に代入されたコマンドを実行
```

コマンドとして代入する場合は`$()`を忘れてはいけない

```bash
a1=$(date)    #
$ echo "$a1"    #コマンドの実行
```

## 演習

1. シェル変数`x1`を定義し、その値を表示後に`x1`を削除するシェルスクリプトを作成せよ。
