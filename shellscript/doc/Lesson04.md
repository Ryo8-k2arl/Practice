# Lesson03

## 処理の流れを変える（case文）

caseも分岐の一つだが、マッチした場合のみの分岐となる
「`prg-0401.sh`」

```shellscript
case String in
    pattern01 )
        command01
        ;;
    pattern02 )
        command02
        ;;
    pattern03 )
        command02
        ;;
    ・
    ・
    ・
esac
```

パターンは正規表現である
様々な表現にも対応する「`prg-0402.sh`」

|表現|意味|
|     :--:     |:--|
|     `y*`     |`y`で始まる任意の文字列|
| `no\|No\|NO` |`no`，`No`，`NO`のどれか|
|  `[a-zA-Z]`  |`a`から`z`，`A`から`Z`のどれかで始まる任意の文字列|
|    `[0-9]`   |0から9のどれかから始まる文字列|

## 演習

1. Lesson03の演習７を`case`文で実装せよ
2. 以下のように動作するシェルスクリプトを`case`文を用いて作成せよ
    - 標準入力から値を入力する
    - 入力値が`s`または`S`で始まるなら`soccer`と表示する
    - 入力値が`bask`で始まるなら`basket ball`と表示する
    - 入力値が`base`で始まるなら`base ball`と表示する
    - 入力値が`f`または`F`で始まるなら`American football`と表示する
    - 入力値が`h`または`H`で始まるなら`hockey`と表示する
    - それ以外なら`other`と表示する
