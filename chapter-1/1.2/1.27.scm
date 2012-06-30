;
;SICP exercise 1.27
(define (square n) (* n n))

(define (expmod base expnum m)
 (cond ((= expnum 0) 1)
  ((even? expnum)
   (remainder (square (expmod base (/ expnum 2) m)) m))
  (else (remainder (* base (expmod base (- expnum 1) m)) m))))

(define (if-equal? a n)
 (= (expmod a n n) a))

(define (test-iter a n)
 (cond ((= a n) #t)
  ((if-equal? a n) (test-iter (+ a 1) n))
  (else #f)))

(define (carmicheal-test n)
 (test-iter 1 n))
