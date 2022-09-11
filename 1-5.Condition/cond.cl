#!/usr/local/bin/clisp
;#!/usr/local/bin/clisp -norc
;#!/usr/bin/clisp -norc

(defun jironcond (var)
  (block :jironcond
    (setf divflag nil)
    (when (= 0 var)
      (print '引数0は無効です)
      (return-from jironcond t))
    (when (= 0 (mod var 3))
      (print '3で割り切れます)
      (setf divflag t))
    (when (= 0 (mod var 7))
      (print '7で割り切れます)
      (setf divflag t))
    (if (not divflag)
      (print '3でも7でも割り切れない))))

;必要引数チェック
(defun paramchk()
  ;whenはifと違ってブロックになる。prognが不要
  (when (= 0 (length *args*))
    (return-from paramchk '引数を数値で指定してください)))
(if (print (paramchk))
  (quit))
;引数をセット
(setf arg0 (parse-integer (nth 0 *args*)))
(print arg0)
(jironcond arg0)

