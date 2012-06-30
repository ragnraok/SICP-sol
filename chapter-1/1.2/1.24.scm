;
;SICP exercise 1.24
(define (square n) (* n n))

(define (expmod base expnum m)
 (cond ((= expnum 0) 1)
  ((even? expnum)
   (remainder (square (expmod base (/ expnum 2) m)) m))
  (else (remainder (* base (expmod base (- expnum 1) m)) m))))

(define (fermat-test n)
 (define (try-it a)
  (= (expmod a n n) a))
 (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
 (cond ((= times 0) true)
  ((fermat-test n) (fast-prime? n (- times 1)))
  (else false)))

(define (prime? n)
 (fast-prime? n 10))

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



