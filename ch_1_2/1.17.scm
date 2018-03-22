(define (double a)
  (+ a a))

(define (halve a)
  (/ a 2))

(define (iter x y n)
    (if (= n 0)
        x
        (if (even? n)
            (iter x (double y) (halve n)) ;; identity step : (2 * 1 / 2) * a = a
            (iter (+ x y) y (- n 1)))))   ;; accumulative step
(define (* a b)
  (iter 0 a b))

(* 2 5)
(iter 0 2 5)
(iter 2 2 4)
(iter 2 4 2)
(iter 2 8 1)
(iter 10 8 0)
10

(* 10 100)
(iter 0 10 100)
(iter 0 20 50)
(iter 0 40 25)
(iter 40 40 24)
(iter 40 80 12)
(iter 40 160 6)
(iter 40 320 3)
(iter 360 320 2)
(iter 360 640 1)
(iter 1000 640 0)
1000
