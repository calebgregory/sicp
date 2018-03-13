; f <- f(n) = n                                      if n < 3
;           = f(n - 1) + 2 * f(n - 2) + 3 * f(n - 3) if n >= 3

; recursive process
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
	 (* 2 (f (- n 2)))
	 (* 3 (f (- n 3))))))

; iterative process
(define (f n)
  (define (iter a b c count)
    (cond ((< count 3) a)
	  (else (iter (+ a (* 2 b) (* 3 c))
		      a
		      b
		      (- count 1)))))
  (if (< n 3)
      n
      (iter 2 1 0 n)))
