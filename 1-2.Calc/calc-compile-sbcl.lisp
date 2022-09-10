#!/usr/bin/sbcl --script

(defun calc();str)
  (format t "~a~%" "整数同士の演算")
  (format t "~a~%" (+ 2 7))
  (format t "~a~%" (- 2 7))
  (format t "~a~%" (* 2 7))
  (format t "~a~%" (/ 2 7))
  (format t "~a~%" "-------")

  (format t "~a~%" "小数の演算")
  (format t "~a~%" (+ 2.0 7))
  (format t "~a~%" (- 2.0 7))
)

(format t "~a~%" "compiled❓")

(sb-ext:save-lisp-and-die "calc-sbcl"
  :toplevel #'calc     ; トップレベルをhelloに
  :executable t)

