;
;SICP exercise 2.4
(define (cons x y)
 (lambda (m) (m x y)))

(define (car z)
 (z (lambda (p q) p)))

;the cdr is
(define (cdr z)
 (z (lambda (p q) q)))


