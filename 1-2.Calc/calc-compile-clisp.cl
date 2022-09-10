#!/usr/bin/clisp -norc
;#!/usr/local/bin/clisp -norc

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
	(exit)
)

(format t "~a~%" "compiled❓")

(ext:saveinitmem "calc-clisp"
	:quiet t               ; バナーを表示しない
	:norc t                ; 初期化ファイルをロードしない
	:init-function #'calc ; REPLの前にhelloを呼ぶ
	:executable t)

