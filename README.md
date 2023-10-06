# Ruby-Sandbox

## 環境構築
[rbenv]()を使用

## インストール可能な　Rubyのバージョン確認
```shell
rbenv install -l
# すべてのバージョンを確認する場合
rbenv install -L
```

## バージョンを指定してインストール
```shell
rbenv install 3.2.2
```

## インストールしたバージョンを使用する
```shell
rbenv global 3.2.2
rbenv local 3.2.2
exec $SHELL -l
# 指定したバージョンが表示されたらOK
ruby -v
```
