(define (square x) (* x x))

(define (improve guess x)
  (/
   (+ (/ x (square guess)) (* 2 guess))
   3))

(define (good-enough? guess x)
  (< (/ (abs (- guess (improve guess x))) guess) 0.0000000001))

(define (cube-rt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-rt-iter (improve guess x) x)))

(define (cube-rt x) (cube-rt-iter 1.0 x))

(cube-rt 27)


