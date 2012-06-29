;
;SICP exercise 1.18

(define (double n)
 (* n 2))

(define (halve n)
 (/ n 2))

(define (mul-iter a b product)
 (cond ((= b 0) product)
  ((even? b) (mul-iter (double a) (halve b) product))
  ((odd? b) (mul-iter a (- b 1) (+ a product)))))

(define (mul a b)
 (mul-iter a b 0))

;test 
;1 ]=> (mul 3 4)
;Value: 12
