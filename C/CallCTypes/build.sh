set -eu

cc -c Callee.c
ghc Callee.o Caller.hs

rm -f Callee.o Caller.hi Caller.o
