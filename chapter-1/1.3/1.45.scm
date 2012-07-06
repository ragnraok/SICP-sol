;
;SICP exercise 1.45

(define (repeated f n)
 (if (= n 1)
  f
  (lambda (x) (f ((repeated f (- n 1)) x)))))

(define (average a b) (/ (+ a b) 2))

(define (average-damp f)
 (lambda (x) (average x (f x))))

(define (repeated-average-damp f n)
 ((repeated average-damp n) f))

(define tolerance 0.00001)
(define (fixed-point f first-guess)
 (define (close-enough? v1 v2)
  (< (abs (- v1 v2)) tolerance))
 (define (try guess)
  (let ((next (f guess)))
   (if (close-enough? guess next)
    next
    (try next))))
 (try first-guess))

(define (damp-n-root n damp-time)
 (lambda (x) (fixed-point (repeated-average-damp (lambda (y) (/ x expt(y (- n 1))))
                           damp-time)
              1.0)))
