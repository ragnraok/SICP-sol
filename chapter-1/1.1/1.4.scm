;SICP exercise 1.4
(define (a-plus-abs-b a b) ((if (> b 0) + -) a b))

;in the if statement, if b > 0, use '+' method, otherwise, use '-' method
;so, if b > 0, the result is (+ a b), otherwise, the result is (- a b)
;that is, a plus the absolute value of b

;test
;>=(a-plus-abs-b 1 -1)
;Value: 2
