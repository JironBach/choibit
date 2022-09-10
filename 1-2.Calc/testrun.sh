#!/bin/sh

#run Ruby
time ./calc.rb
#run Java
time /usr/bin/java Calc

#run sbcl
time /usr/local/bin/sbcl --script ./calc.lisp
#time ./calc.lisp
#run clisp
time ./calc.cl

#run cpp
time ./calc

