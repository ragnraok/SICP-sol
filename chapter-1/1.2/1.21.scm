;
;SICP exercise 1.21

;the smallest test function
(define (divides? a b)
 (= (remainder b a) 0))

(define (square n) (* n n))

(define (find-divisor n test-divisor)
 (cond ((> (square test-divisor) n) n)
  ((divides? test-divisor n) test-divisor)
  (else (find-divisor n (+ test-divisor 1)))))

(define (smallest-divisor n)
 (find-divisor n 2))

(define (prime? n)
 (= n (smallest-divisor n)))


;1 ]=> (smallest-divisor 199)
;
;;Value: 199
;
;1 ]=> (smallest-divisor 1999)
;
;;Value: 1999
;
;1 ]=> (smallest-divisor 19999)
;
;;Value: 7
