set -eu

cc -c Callee.c

#ar rcs libcle.a Callee.o
ar rcs LibCallee.a Callee.o

#ghc -L. -lcle Caller.hs
ghc LibCallee.a Caller.hs

rm -f Callee.o Caller.hi Caller.o
