

## コマンドとプロセス

複数のシェルを起動した際、シェルはそれぞれ独立しておりシェルに関する操作は影響しない
現在位のシェルのユーザー名が`user01`とする

```bash
~$ sh
$ PS1="$USER: "
user01: cd d0102
user01: pwd
/home/user01/d0102
user01:
~$ pwd
/home/user01
```

シェルスクリプトでも確認できる「`prg0601.sh`」


## プロセス

次のようにシェルスクリプトを作成（「`prg0602.sh`」）し、実行

```Bash
$ ps -f
（表示A）
$ sh
$ ps -f
（表示B）
$ ^d
$ （prg0602.shの実行）
（表示C）
```

表示は以下のようになる（一例）
```Bash
$ ps -f
UID      PID  PPID  C STIME TTY          TIME CMD
user01  4122  4121  0 13:14 pts/4    00:00:00 -bash
user01  4181  4122  0 13:15 pts/4    00:00:00 ps -f
$ sh
$ ps -f
UID      PID  PPID  C STIME TTY          TIME CMD
user01  4122  4121  0 13:14 pts/4    00:00:00 -bash
user01  4185  4122  0 13:15 pts/4    00:00:00 sh
user01  4192  4185  0 13:15 pts/4    00:00:00 ps -f
$
$ sh prg0602.sh
UID      PID  PPID  C STIME TTY          TIME CMD
user01  4122  4121  0 13:14 pts/4    00:00:00 -bash
user01  4208  4122  0 13:15 pts/4    00:00:00 sh prg0602.sh
user01  4209  4208  0 13:15 pts/4    00:00:00 ps -f
```
|項目|内容|
|:--:|:-- |
|`UID`|ユーザー名|
|`PID`|プロセスID|
|`PPID`|親プロセスのPID|
|`TTY`|使用端末|
|`CMD`|実行中のコマンド名|

PIDとPPIDを確認すると、すべて親子の関係になっている
このように、コマンドを実行すると別シェルが起動される。（別プロセスで実行される）

しかし、`cd`のようなコマンドは「ビルトインコマンド」といい、同じプロセス内で実行される。


## 演習

1. 以下のような動作をする２つのシェルスクリプトを作成してください。
    `ps -j`の結果を見て、コマンドとプロセスの関係を確認してください。
    - 第１のシェルスクリプトから第２のシェルスクリプトを実行する
    - 第２のシェルスクリプトの中で`ps -j`を実行する