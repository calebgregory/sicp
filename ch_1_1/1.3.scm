; Define a procedure that takes three numbers as arguments and returns the sum
; of the squares of the two larger numbers.

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (>= x y) (not (< x y)))

; 1 2 3
; 1 3 2
; 2 1 3
; 2 3 1
; 3 1 2
; 3 2 1

(define (sum-of-max-and-sqr mx p q)
  (if (>= p q)
    (sum-of-squares mx p)
    (sum-of-squares mx q)))

(define (f x y z)
  (cond ((= x (max x y z)) (sum-of-max-and-sqr x y z))
        ((= y (max x y z)) (sum-of-max-and-sqr y x z))
        ((= z (max x y z)) (sum-of-max-and-sqr z x y))))
