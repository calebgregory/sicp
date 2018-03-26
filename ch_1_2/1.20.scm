(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

;; normal-order evaluation
(gcd 206 40)
(gcd 40 (remainder 206 40))
(gcd (remainder 206 40) (remainder 40 (remainder 206 40)))
(gcd 6 (remainder 40 6)) ; 2
(gcd (remainder 40 6) (remainder 6 (remainder 40 6)))
(gcd 4 (remainder 6 4)) ; 4
(gcd (remainder 6 4) (remainder 4 (remainder 6 4)))
(gcd 2 (remainder 4 2)) ; 6
(gcd 2 0) ; 7

;; applicative-order evaluation
(gcd 206 40)
(gcd 40 (remainder 206 40))
(gcd 40 6) ; 1
(gcd 6 (remainder 40 6))
(gcd 6 4) ; 2
(gcd 4 (remainder 6 4))
(gcd 4 2) ; 3
(gcd 2 0)
