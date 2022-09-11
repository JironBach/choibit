#!/usr/local/bin/sbcl --script
;#!/usr/bin/sbcl --script

(defun hello (str)
  (print str)
  (format t "~a~%" str)
)

(hello "Hello World!!!🐩❓")

