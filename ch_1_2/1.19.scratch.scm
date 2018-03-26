(define (new-a a b p q)
  (+ (* b q) (* a q) (* a p)))
(define (new-b a b p q)
  (+ (* b p) (* a q)))

(define (p-prime p q)
  (+ (* p p) (* q q)))
(define (q-prime p q)
  (+ (* 2 p q) (* q q)))

(define a 1)
(define b 0)
(define p 0)
(define q 1)

(new-a a b p q)
(new-b a b p q)

(define p 1)
(define q 2)

(new-a a b p q)
(new-b a b p q)

;; 0 1 1 2 3 
