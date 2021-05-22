(in-package :eratosthenes-sieve)

(defun naive (n)
  "Enumerate prime numbers up to value n (included) using a naive
   sieve of Eratosthenes. Requires at least n bits of memory.
   Returns a list of primes (p1 p2 p3 ...)."
  (let (;; Sieve starts from 0. Value 1 for eliminated numbers.
        (sieve (make-array (1+ n) :element-type 'bit))
        ;; There are no multiples to sieve of numbers >sqrt(n).
        (last-divisor (floor (sqrt n)))
        ;; Current eliminated number.
        (cur-num 0))
    ;; 0,1 are not prime
    (psetf (aref sieve 0) 1 (aref sieve 1) 1)
    ;; Main sieving process
    (loop for i from 2 upto last-divisor do
      (when (= (aref sieve i) 0)
        (setf cur-num (* i i))
        (loop while (<= cur-num n) do
          (setf (aref sieve cur-num) 1)
          (incf cur-num i))))
    ;; Collect remaining primes.
    (loop for i from 0 upto n when (= 0 (aref sieve i)) collect i)))
