;
;SICP exercise 2.20
(define (same-parity first . remain-items)
 (filter (if (even? first)
          even?
          odd?)
  (cons first remain-items)))

