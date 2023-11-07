# Shellscript 勉強

## 事前注意

VScodeの拡張機能「Code Runner」を使用する場合、shebangを消去しないとそちらが優先され、コマンドが機能しない。
必ず`settings.json`に以下を記述すること

```json
{
    "code-runner.respectShebang": false,
}
```

基本は図書で行う（参考文献を参照[^1]）

しかし、古いバージョンの可能性もあるので、Webciteも使用し齟齬をすり合わせる。
Shellscriptといっても、shellによって文法が多少異なる。
Bash（Bourne-Again Shell）の文法を扱う。

Ubuntuを使用していると`sh -x %file_name%`で実行できないことがある。
これは、Ubuntuはログインシェルはbashであるが、他はより高速なdashを使用している。
しかし、dashは人が扱うには不向きな点が多いので、人がスクリプトを書くときにはあまり推奨されない
（カーソルによるhistory表示がされない等）

shellscriptを書くときは`sh`のPOSIXに従わないと互換性がなくなるので推奨されない。
（Bashは独自機能がふんだんに使用されている）

**`sh`のPOSIXに従うこととする**

## 参考文献

[^1]: 中居獏，[わかる＆使える UNIX基礎講座 シェルスクリプト編](https://gihyo.jp/book/2005/4-7741-2362-5)，株式会社技術評論社，Jun．2005(2005/06/01)
