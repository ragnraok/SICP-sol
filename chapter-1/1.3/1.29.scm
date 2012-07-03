;
;SICP exercise 1.29
(define (sum term a next b)
 (if (> a b)
  0
  (+ (term a)
   (sum term (next a) next b))))

(define (simpson f a b n)
 (define h (/ (- b a) n))
 (define (k-factor k)
  (cond ((or (= k 0) (= k n)) 1)
   ((odd? k) 4)
   ((even? k) 2)))
 (define (y-k k)
  (f (+ a (* k h))))
 (define (term-k k)
  (* (k-factor k) (y-k k)))
 (define (next-k k)
  (+ k 1))
 (* (/ h 3) (sum term-k (exact->inexact a) next-k n)))

;(exact->inexact n) transfer a number to floating number

;test
;1 ]=> (simpson cube 0 1 100)
;
;;Value: .24999999999999992
;
;1 ]=> (simpson cube 0 1 1000)
;
;;Value: .2500000000000003

 
    
   

