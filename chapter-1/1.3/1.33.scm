;
;SICP exercise 1.33
(define (filtered-accumulate combiner null-value term a next b valid?)
 (if (> a b)
  null-value
  (if (valid?)
   (combiner (term a) (filtered-accumulate combiner null-value term (next a) next b valid?))))
 (filtered-accumulate combiner null-value term (next a) next b valid?)) ;if not valid, just simply continue


