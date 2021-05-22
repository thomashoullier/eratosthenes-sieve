(defsystem eratosthenes-sieve
  :name "eratosthenes-sieve"
  :author "Thomas HOULLIER"
  :components
  ((:module "src"
    :components ((:file "package")
                 (:file "eratosthenes-sieve" :depends-on ("package")))))
  :in-order-to ((test-op (test-op "eratosthenes-sieve/test"))))

(defsystem eratosthenes-sieve/test
  :name "eratosthenes-sieve/test"
  :depends-on ("rove" "eratosthenes-sieve")
  :components
  ((:module "test"
    :components ((:file "rove-suite"))))
  :perform (test-op (o c) (symbol-call :rove '#:run c)))
