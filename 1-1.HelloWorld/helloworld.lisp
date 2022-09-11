#!/usr/local/bin/sbcl --script
;#!/usr/bin/sbcl --script

(defun hello (str)
  ;printとformatの違いを調べている
  (print str)
  (format t "~a~%" str)
)

(hello "Hello World!!!😸❓")

