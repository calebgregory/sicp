(define (square x) (* x x))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

; 0.001 is our tolerable diff betwixt guess^2 and x
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sq-rt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sq-rt-iter (improve guess x) x)))

(define (sq-rt x) (sq-rt-iter 1.0 x))

(sq-rt 2)

; alternate - caution: infinitely recurses due to applicative-order evaluation
(define (alt-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

(define (alt-sq-rt-iter guess x)
  (alt-if (good-enough? guess x)
	  guess
	  (alt-sq-rt-iter (improve guess x) x)))

(alt-sq-rt-iter 1.0 2)

					; ex 1.7

; redefines good-enough? to return whether guess2 (improve guess x)
; is a very small fraction of guess1
(define (good-enough? guess x)
  (< (/ (abs (- guess (improve guess x))) guess) 0.0000000001))

(sq-rt 356756544) ; => 18888.
