#!/bin/sh

#./compile.sh

#run Ruby
time ./helloworld.rb
#run Java
time ./HelloWorld.sh

#run sbcl
time /usr/local/bin/sbcl --script ./helloworld.lisp
#time ./helloworld.lisp
time ./hello-sbcl
#run clisp
time ./helloworld.cl
time ./hello-clisp

#run native
time ./helloworld

