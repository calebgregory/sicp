; Defineg a procedure that evolves an iterative exponentiation process
; that uses successive squaring and uses a logarithmic number of
					; steps.

(define (square x) (* x x))
(define (even? x) (= (remainder x 2) 0))

(define (iter a b n)
  (if (= n 0)
      a
      (if (even? i)
	  (iter a (square b) (/ n 2))
	  (iter (* a b) b (- n 1)))))
(define (fast-exp base power)
  (iter 1 base power))

(fast-exp 2 3)
(iter 1 2 3)
(iter 2 2 2)
(iter 2 4 1)
(iter 8 2 0)
8

(fast-exp 2 4)
(iter 1 2 4)
(iter 1 4 2)
(iter 4 4 1)
(iter 16 4 0)
16

(fast-exp 2 5)
(iter 1 2 5)
(iter 2 2 4)
(iter 2 4 2)
(iter 2 16 1)
(iter 32 16 0)
32

