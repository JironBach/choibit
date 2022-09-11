#!/usr/bin/env clisp
;#!/usr/local/bin/clisp -norc
;#!/usr/bin/clisp -norc

;(load "calc.cl")

(defun calc()
  (format t "~a~%" "整数同士の演算")
  (format t "~a~%" (+ 2 7))
  (format t "~a~%" (- 2 7))
  (format t "~a~%" (* 2 7))
  (format t "~a~%" (/ 2 7))
  (format t "~a~%" "-------")

  (format t "~a~%" "小数の演算")
  (format t "~a~%" (+ 2.0 7))
  (format t "~a~%" (- 2.0 7))
  (format t "~a~%" (* 2.0 7))
  (format t "~a~%" (/ 2.0 7))
  (format t "~a~%" "-------")

  (format t "~a~%" "余りの演算")
  (format t "~a~%" (mod 2 7))
  (format t "~a~%" (mod 2.0 7))
  (format t "~a~%" "-------")
  
  (format t "~a~%" "複素数の演算")
  (format t "~a~%" (+ #C(2 2) #C(-7 -7)))
  (format t "~a~%" (- #C(2 2) #C(-7 -7)))
  (format t "~a~%" (* #C(2 2) #C(-7 -7)))
  (format t "~a~%" (/ #C(2 2) #C(-7 -7)))
  (format t "~a~%" "-------")
  (format t "~a~%" (+ #C(2.0 2.0) #C(-7.0 -7.0)))
  (format t "~a~%" (- #C(2.0 2.0) #C(-7.0 -7.0)))
  (format t "~a~%" (* #C(2.0 2.0) #C(-7.0 -7.0)))
  (format t "~a~%" (/ #C(2.0 2.0) #C(-7.0 -7.0)))
  (format t "~a~%" "-------")

  (quit)
)

(ext:saveinitmem "calc-clisp"
  :quiet t               ; バナーを表示しない
  :norc t                ; 初期化ファイルをロードしない
  :init-function #'calc ; REPLの前にhelloを呼ぶ
  :executable t)

(format t "~a~%" "clisp compiled❓")

