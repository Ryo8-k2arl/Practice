# Lesson05

## 繰り返し処理

### 引数とshiftコマンド

実行時に引数を与える場合はシェルスクリプトでは`$1`のように表す。
2桁なら`${10}`のように表す。
`$0`はコマンド自信を指す。「`prg0501.sh`」

また、引数を一つずつずらす`shift`コマンドが存在する。「`prg0502.sh`」
繰り返し処理の際にしばしば用いられる。

### while文

while文は以下のような文法になる「`prg0503.sh`」

```shellscript
while condition;
    do
        commands （条件が真であれば繰り返す）
done
```

他にも終了方法があり、`break`文がある。「`prg0504.sh`」
`continue`文という次の繰り返しに移る（そのブロックのループの末尾に移動）「`prg0505.sh`」

### until文

until文は以下のような文法になる「`prg0506.sh`」

```shellscript
until condition;
    do
        commands （条件が偽であれば繰り返す）
done
```

このように、`while`文と`until`文の条件式は対になっている。

### for 文

for文は与えた文字列の数だけ実行する。
文法は以下のようになっている「`prg0507.sh`」

```shellscript
for value in Strings; do
    commands
done
```

for文の`Strings`にはshellscriptのマジック変数を使う場合もある「`prg0508.sh`」

引数

`$*`と`$@`の違い
[シェルスクリプトの $* と $@ の違いと雑学色々](https://qiita.com/ko1nksm/items/98952723d7a71799673c)
[シェルスクリプトの変数はダブルクォートしなければいけない！という話](https://qiita.com/ko1nksm/items/60b67cb24aa4ae634dd5)

## 演習

1. 以下のように動作するシェルスクリプトを`while`文で作成せよ。
   - 標準入力から入力する
   - 入力値を表示する
   - 入力値が`n`になるまで繰り返す
2. 1.のシェルスクリプトを`until`文で実装せよ
3. 以下のように動作するシェルスクリプトを作成せよ
    - 複数の文字列を与える
    - 文字列を表示する
    - 文字列がなくなるまで繰り返す
    - 文字列が`zz`であれば終了する
