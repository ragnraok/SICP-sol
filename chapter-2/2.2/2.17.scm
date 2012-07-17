;
;SICP exercise 2.17
(define (last-pair items)
 (if (null? (cdr items)) (car items)
  (last-pair (cdr items))))
