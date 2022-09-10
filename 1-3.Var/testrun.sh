#!/bin/sh

#run Ruby
time ./pow.rb
#run Java
time /usr/bin/java Pow

#run sbcl
time /usr/local/bin/sbcl --script ./pow.lisp
#time ./pow.lisp
#run clisp
time ./pow.cl

#run cpp
time ./pow

