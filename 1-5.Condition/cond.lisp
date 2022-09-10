#!/usr/local/bin/sbcl --script

;sbclの場合は大域変数でないとwarningが出る
(defparameter *divflag* nil)
(defun jironcond (var)
  (block :jironcond
    (setf *divflag* nil)
    (when (= 0 var)
      (print '引数0は無効です)
      (return-from jironcond t))
    (when (= 0 (mod var 3))
      (print '3で割り切れます)
      (setf *divflag* t))
    (when (= 0 (mod var 7))
      (print '7で割り切れます)
      (setf *divflag* t))
    (if (not *divflag*)
      (print '3でも7でも割り切れない))))

;必要引数チェック
;whenはifと違ってブロックになる。prognが不要
(when (< 2 (length sb-ext:*posix-argv*))
  (print '引数を数値で指定してください)
  (quit))
;引数をセット
(defparameter *arg1* (parse-integer (nth 1 sb-ext:*posix-argv*)))
(print *arg1*)
(jironcond *arg1*)

