#!/bin/sh

#java compile
javac HelloWorld.java
#sbcl compile
sbcl --script ./hello-compile-sbcl.lisp
#clisp compile
./hello-compile-clisp.cl
#cpp compile
make clean && make

