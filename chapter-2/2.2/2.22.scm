;
;SICP exericse 2.22
(define (square x) (* x x))

(define (square-list items)
 (define (iter things answer)
  (if (null? things)
   answer
   (iter (cdr things) 
        (cons (square (car things)) answer))))
 (iter items ()))

;(square-list (list 1 2 3))
;(iter (1 2 3) ())
;(iter (2 3) (1))
;(iter (3) (4 1))
;(iter () (9 4 1))
;9 4 1

;Louis version
(define (square-list-2 items)
 (define (iter things answer)
  (if (null? things)
   answer
   (iter (cdr things)
    (cons answer (square (car things))))))
 (iter items ()))

;(square-list-2 (list 1 2 3))
;(iter (1 2 3) ())
;(iter (2 3) (() 1))
;(iter (3) (() 1 4))
;(iter () (() 1 4 9))
;(((() . 1) . 4) . 9)

;correct version
(define (square-list-3 items)
 (define (iter things answer)
  (if (null? things)
   (reverse answer)
   (iter (cdr things)
    (cons (square (car things)) answer))))
 (iter items ()))
     
 
