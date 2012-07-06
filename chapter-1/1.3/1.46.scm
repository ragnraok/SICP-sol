;
;SICP exercise 1.46

(define (iterative-improve close-enough? improve)
 (lambda (first-guess)
  (define (try guess)
   (let ((next (improve guess)))
    (if (close-enough? guess next)
     next
     (try next))))
  (try first-guess)))


(define (fixed-point f first-guess)
 (define tolerance 0.00001)
 (define (close-enough? guess next)
  (< (abs (- guess next)) tolerance))
 (define (improve guess)
  (f guess))
 ((iterative-improve close-enough? improve) first-guess))

(define (my-sqrt x)
 (define dx 0.00001)
 (define (close-enough? guess next)
  (< (abs (- guess next)) dx))
 (define (improve guess)
  (average guess (/ x guess)))
 (define (average a b) (/ (+ a b) 2))
 ((iterative-improve close-enough? improve) 1.0))
