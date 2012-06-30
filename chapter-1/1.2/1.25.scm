;
;SICP exercise 1.25

(define (square n) (* n n))

(define (fast-expt b n) 
 (cond ((= n 0) 1)
  ((even? n) (square (fast-expt b (/ n 2))))
  (else (* b (fast-expt b (- n 1))))))

(define (expmod base expnum m)
 (remainder (fast-expt base expnum) m))

;It is right, but it is slow...
