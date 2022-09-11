#!/bin/sh

#run Ruby
time ./calc.rb
#run Java
time /usr/bin/java Calc

#run sbcl
time /usr/local/bin/sbcl --script ./calc.lisp
#time ./calc.lisp
time ./calc-sbcl
#run clisp
time ./calc.cl
time ./calc-clisp

#run cpp
time ./calc

