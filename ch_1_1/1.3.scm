; Define a procedure that takes three numbers as arguments and returns the sum
; of the squares of the two larger numbers.

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (<= x y) (not (> x y)))

; 1 2 3
; 1 3 2
; 2 1 3
; 2 3 1
; 3 1 2
; 3 2 1

(define (sum-of-max-2-squares x y z)
  (cond ((and (<= x y) (<= x z)) (sum-of-squares y z))
	((<= y z) (sum-of-squares x z))
	(else (sum-of-squares x y))))

(sum-of-max-2-squares 3 2 1)
