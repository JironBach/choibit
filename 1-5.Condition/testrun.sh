#!/bin/sh

#run Ruby
time ./cond.rb 21
#run Java
time /usr/bin/java Cond
time /usr/bin/java Cond 21

#run sbcl
time /usr/local/bin/sbcl --script ./cond.lisp 21
#time ./cond.lisp 21
#run clisp
time ./cond.cl 21

#run cpp
time ./cond 21

