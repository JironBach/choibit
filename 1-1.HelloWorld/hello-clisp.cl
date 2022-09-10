#!/usr/local/bin/clisp -norc

(defun hello();str)
	(format t "Hello World!!!🈲")
	(exit)
)

(format t "~a~%" "compiled❓")

(ext:saveinitmem "hello-clisp"
	:quiet t               ; バナーを表示しない
	:norc t                ; 初期化ファイルをロードしない
	:init-function #'hello ; REPLの前にhelloを呼ぶ
	:executable t)

