#!/usr/local/bin/clisp -norc

(format t "~a~%" "compiled❓")

(defun hello ()
  (format t "Hello World!!!🐩")
  (exit)
)

(ext:saveinitmem "hello-clisp"
  :quiet t               ; バナーを表示しない
  :norc t                ; 初期化ファイルをロードしない
  :init-function #'hello ; REPLの前にhelloを呼ぶ
  :executable t)

