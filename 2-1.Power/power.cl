#!/usr/bin/env clisp
;#!/usr/local/bin/clisp
;#!/usr/bin/clisp -norc

(defun power(x y)
  ;ifにはprognが必要
  (if (> y 1)
    (progn
      (return-from power (* x (power x (- y 1)))))
  ;prognが閉じられたらelseになる
  (return-from power x)))

;必要引数チェック
;whenにはprognが必要ない
(when (< (length *args*) 2)
  (print '基数と乗数を数値で指定してください)
  (quit))

;引数をセット
(setf arg0 (parse-integer (nth 0 *args*)))
(setf arg1 (parse-integer (nth 1 *args*)))

;(print (power arg0 arg1))
(format t "~a~%" (power arg0 arg1))
