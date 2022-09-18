(defsystem "lispDB-test"
  :defsystem-depends-on ("prove-asdf")
  :author ""
  :license ""
  :depends-on ("lispDB"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "lispDB"))))
  :description "Test system for lispDB"
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
