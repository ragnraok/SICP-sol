;
;SICP exercise 1.31
(define (product-recursive term a next b)
 (if (> a b)
  1
  (* (term a)
   (product-recursive term (next a) next b))))

(define (product-iteractive term a next b)
 (define (iter a result)
  (if (> a b)
   result
   (iter (next a) (* (term a) result))))
 (iter a 1))

;define factorial in term of product-recursive
(product-recursive (lambda (x) x) 1 (lambda (k) (+ k 1)) 100)

;use product to calculate the requirement formula
(define (pi-quarter a n)
 (define (numerator-term k)
  (if (odd? k) (+ k 1)
   (+ k 2)))
 (define (denominator-term k)
  (if (odd? k) (+ k 2)
   (+ k 1)))
 (define (pi-term k)
  (/ (exact->inexact(numerator-term k)) (exact->inexact(denominator-term k))))
 (define (next-k k) (+ k 1))
 (product-recursive pi-term a next-k n))

(define (pi n)
 (* 4 (pi-quarter 1 n)))

;test
;1 ]=> (pi 100)
;
;;Value: 3.1570301764551645
;
;1 ]=> (pi 1000)
;
;;Value: 3.143160705532257
;
;1 ]=> (pi 10000)
;
;;Value: 3.1417497057379635


