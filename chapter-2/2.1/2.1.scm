;
;SICP exercise 2.1

(define (make-rat n d)
 (cond ((< d 0) and (< n 0) (cons n d))
  ((< d 0) and (> n 0) (cons (- n) (- d)))
  ((> d 0) and (< n 0) (cons n d))
  ((> d 0) and (> n 0) (cons n d))

  
  
