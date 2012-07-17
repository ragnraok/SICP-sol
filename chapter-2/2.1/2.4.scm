;
;SICP exercise 2.4
(define (cons x y)
 (lambda (m) (m x y)))

(define (car z)
 (z (lambda (p q) p)))

;the cdr is
(define (cdr z)
 (z (lambda (p q) q)))

;(car (cons 1 2))
;(car (lambda (m) (m 1 2))
;((lambda (z) (z (lambda (p q) p)))
; 	(lambda (m) (m 1 2)))
;((lambda (m) (m 1 2)) (lambda (p q) p))
;((lambda (p q) p) (1 2))
;1


