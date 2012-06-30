;
;SICP exercise 1.23

;the smallest test function
(define (divides? a b)
 (= (remainder b a) 0))

(define (next n)
 (if (= n 2) 3)
 (+ n 2))

(define (square n) (* n n))

(define (find-divisor n test-divisor)
 (cond ((> (square test-divisor) n) n)
  ((divides? test-divisor n) test-divisor)
  (else (find-divisor n (next test-divisor )))))

(define (smallest-divisor n)
 (find-divisor n 2))

(define (prime? n)
  (= (smallest-divisor n) n))

(define (next-odd n)
 (if (odd? n) (+ n 2)
  (+ n 1)))

(define (consecutive-prime n count)
 (cond ((= count 0) (display "count become zero") (newline))
  ((prime? n) (display n) (newline) (consecutive-prime (next-odd n) (- count 1)))
  (else (consecutive-prime (next-odd n) count))))

(define (timed-consecutive-prime n count)
 (let ((start-time (real-time-clock)))
 (consecutive-prime n count)
 (- (real-time-clock) start-time)))


;1 ]=> (timed-consecutive-prime 1000 3)
;1001
;1003
;1005
;count become zero
;;Value: 1
;
;1 ]=> (timed-consecutive-prime 10000 3)
;10001
;10003
;10005
;count become zero
;;Value: 2
;
;1 ]=> (timed-consecutive-prime 100000 3)
;100001
;100003
;100005
;count become zero
;;Value: 3
;
;1 ]=> (timed-consecutive-prime 1000000 3)
;1000001
;1000003
;1000005
;count become zero
;;Value: 9

