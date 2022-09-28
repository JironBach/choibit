#!/usr/local/bin/eisl -s
;#!/usr/bin/env eisl -s

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
(setq arg0 (parse-integer (nth 0 *args*)))
(setq arg1 (parse-integer (nth 1 *args*)))

;(print (power arg0 arg1))
(format (standard-output "~A~%" (power arg0 arg1))
