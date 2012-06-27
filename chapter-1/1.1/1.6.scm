;SICP exercise 1.6
;the new-if
(define (new-if predicate then-clause else-clause)
 (cond (predicate then-clause)
       (else else-clause)))

(define (square x) (x * x))

(define (good-enough? guess x) (< (abs (- (square guess) x)) 0.001))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (sqrt-iter guess x) (new-if (good-enough? guess x) guess (sqrt-iter (improve guess x) x)))

(define (my-sqrt x) (sqrt-iter 1.0 x))

;test
;>=(my-sqrt 3)
;Aborting!: maximum recursion depth exceeded

;Because the 'new-if' just a simple procedure, according to the applicative-order, when pass the argument
;the predicate, then-clause, else-clause will be evaluate, it will overhead the use of stack, so will case
;the aborting: maximum recusion depth exceeded
;In contrast, the 'if' is a spcial form, only one of the then-clause and else-clause will be evaluate, 
;so will not cause the overhead use of the stack
