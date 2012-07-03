;
;SICP exercise 1.32

(define (accumulate-recursive combiner null-value term a next b)
 (if (> a b)
  null-value
  (cominber (term a)
   (accumulate-recursive cominber null-value term (next a) next b))))

(define (accumulate-iterative combiner null-value term a next b)
 (define (iter a result)
  (if (> a b)
   result
   (iter (next a) (combiner (term a) result))))
 (iter a null-value))

;the new definition of sum and product
(define (sum term a next b)
 (define (add x1 x2) (+ x1 x2))
 (accumulate-recursive add 0 term a next b))

(define (product term a next b)
 (define (mul x1 x2) (* x1 x2))
 (accumulate-recursive mul 1 term a next b))

