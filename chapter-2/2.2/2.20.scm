;
;SICP exercise 2.20
(define (same-parity first . remain-items)
 (filter (if (even? first)
          even?
          odd?)
  (cons first remain-items)))

(define (all-odd items)
 (define (all-odd-iter items-remain result)
  (if (null? items-remain) result
   (all-odd-iter (cdr items-remain) 
    (cons (result (if (odd? (car items-remain)) (car items-remain) 0)))))))


