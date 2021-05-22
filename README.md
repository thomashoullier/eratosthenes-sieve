# Sieve of Eratosthenes
`eratosthenes-sieve` packages routines for enumerating prime numbers that are
related to the sieve of Eratosthenes [1].

## Usage
We enumerate every prime up to value n included.

### Naive
The function `naive` implements the sieve of Eratosthenes as an explicit vector
of bits, one for each number between 0 and n.

```common-lisp
(eratosthenes-sieve:naive 100)
;; => (2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97)
```

While this is a "naive" implementation, it is still sufficient for most
practical purposes. The main downside is that at least n bits of memory
are used. I can enumerate all primes <=1E8 in 1.7 seconds on my (modest)
machine.

## Dependencies
* `eratosthenes-sieve`: None
* `eratosthenes-sieve/test`:
  * [rove](https://github.com/fukamachi/rove)

## Test
Launch tests with:

```common-lisp
(asdf:test-system "eratosthenes-sieve")
```

## References
1. https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
