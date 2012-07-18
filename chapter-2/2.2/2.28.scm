;
;SICP exercise 2.28
(define (fringe tree)
 (cond ((null? tree) ())
  ((not (pair? tree)) (list tree))
  (else (append (fringe (car tree)) (fringe (cadr tree))))))
