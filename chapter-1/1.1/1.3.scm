;SICP exercise 1.3
(define (find-second-max a b c) (max (min a b) c))
(define (sum-of-squares x y) (+ (* x x) (* y y)))
(define (squares-two-max a b c) (sum-of-squares (max a b) (find-second-max a b c)))

;test
;>=(squares-two-max 1 2 3)
;Value: 13
