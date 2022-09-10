#!/usr/local/bin/sbcl --script

(defun hello();str)
	(format t "~a~%" "Hello World!!!🈲")
)

(sb-ext:save-lisp-and-die "hello-sbcl"
  :toplevel #'hello     ; トップレベルをhelloに
  :executable t)

