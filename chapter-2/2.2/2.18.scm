;
;SICP exericse 2.18
(define (my-reverse items)
 (define (reverse-iter remained-item result)
  (if (null? remained-item) 
   result
   (reverse-iter (cdr remained-item) (cons (car remained-item) result))))
 (reverse-iter items ()))
    
