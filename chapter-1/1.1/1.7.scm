;
;SICP exercise 1.7

;the old version:
;>=(my-sqrt 0.00009)
;Value: .03220324381282134 ; Error!
;>=(my-sqrt 90000000000000000000000000000000000000000)
;Value: 3e20
;It is no problem for the big number, but it is error for small number,
;beacase in the improve, the precise number is only 0.001

;The new version

(define (square x) (* x x))

(define (good-enough? old-guess new-guess) (< (abs (- old-guess new-guess)) 0.001))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (sqrt-iter guess x)
    (if (good-enough? guess (improve guess x)) 
        (improve guess x)
        (sqrt-iter (improve guess x)
                   x)))

(define (my-sqrt x) (sqrt-iter 1.0 x))

;test
;>(my-sqrt 0.00009)
;Value: 9.487978730289174e-3
