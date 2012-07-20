;
;SICP exericse 2.38

(define (fold-left op initial sequence)
 (define (iter result rest)
  (if (null? rest)
   result
   (iter (op result (car rest))
    (cdr rest))))
 (iter initial sequence))

(define (accumulate op initial sequence)
 (if (null? sequence)
  initial
  (op (car sequence)
   (accumulate op initial (cdr sequence)))))

(define (fold-right op initial sequence) (accumulate op initial sequence))

;the output is 
;1 ]=> (fold-right / 1 (list 1 2 3))
;
;;Value: 3/2
;
;1 ]=> (fold-left / 1 (list 1 2 3))
;
;;Value: 1/6
;
;1 ]=> (fold-right list () (list 1 2 3))
;
;;Value 11: (1 (2 (3 ())))
;
;1 ]=> (fold-left list () (list 1 2 3))
;
;;Value 12: (((() 1) 2) 3)

;when the op satisfied the commutation law, fold-left and fold-right will produce the same output, for example:
;1 ]=> (fold-left + 0 (list 1 2 3))
;
;;Value: 6
;
;1 ]=> (fold-right + 0 (list 1 2 3))
;
;;Value: 6

