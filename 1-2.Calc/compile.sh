#!/bin/sh

#java compile
javac Calc.java
#sbcl compile
rm -f ./calc-sbcl
sbcl --script ./calc-compile-sbcl.lisp
#clisp compile
rm -f ./calc-clisp
/usr/local/bin/clisp -norc ./calc-compile-clisp.cl
#cpp compile
make clean && make

