(defpackage :eratosthenes-sieve/test
  (:use :cl :rove))
(in-package :eratosthenes-sieve/test)

(defvar *primes-to-100*
  (list 2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97))

(deftest naive
  (testing "n = 2"
    (ok (equal (eratosthenes-sieve:naive 2) (list 2)) "ok"))
  (testing "Up to 100"
    (ok (equal (eratosthenes-sieve:naive 100) *primes-to-100*) "ok"))
  (testing "Up to 97"
    (ok (equal (eratosthenes-sieve:naive 97) *primes-to-100*) "ok")))
