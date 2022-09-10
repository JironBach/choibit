#!/usr/bin/sbcl --script
;#!/usr/local/bin/sbcl --script

(format t "~a~%" "compiled❓ ")

(defun hello ()
  (format t "~a~%" "Hello World!!!😸")
)

(sb-ext:save-lisp-and-die "hello-sbcl"
  :toplevel #'hello     ; トップレベルをhelloに
  :executable t)

