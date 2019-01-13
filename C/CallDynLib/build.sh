set -eu

gcc -shared Callee.c -o libcle.so

ghc -L. -lcle Caller.hs

rm -f Callee.o Caller.hi Caller.o

# 実行時に環境変数に対して動的ライブラリのパス指定?
# Windows上に就ては動作確認濟
