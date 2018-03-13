					; Pascal's triangle, recursively
(define (pascal row column)
  (if (or (= column 1) (= row column))
      1
      (+ (pascal (- row 1) (- column 1))
	 (pascal (- row 1) column))))
					; 1
					; 1 1
					; 1 2 1
					; 1 3 3 1
					; 1 4 6 4 1
(pascal-triangle 5 2)
