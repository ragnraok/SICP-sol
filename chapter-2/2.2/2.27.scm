;
;SICP exercise 2.27
(define (my-reverse items)
 (define (reverse-iter remained-item result)
  (if (null? remained-item) 
   result
   (reverse-iter (cdr remained-item) (cons (car remained-item) result))))
 (reverse-iter items ()))

(define (deep-reverse tree)
 (cond ((null? tree) ())
  ((not (pair? tree)) tree)
  (else (reverse (list (deep-reverse (car tree)) (deep-reverse (car (cdr tree))))))))
  
