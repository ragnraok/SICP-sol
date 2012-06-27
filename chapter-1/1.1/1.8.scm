;
;SICP exercise 1.8

(define (square x) (* x x))

(define (good-enough? old-guess new-guess) (< (abs (- old-guess new-guess)) 0.0001))

(define (improve guess x)                  
    (/ (+ (/ x (square guess)) (* 2 guess))
       3))

(define (cube-iter guess x)
    (if (good-enough? guess (improve guess x)) 
        (improve guess x)
        (cube-iter (improve guess x)
                   x)))

(define (my-cube-root x) (cube-iter 1.0 x))

;test
;=> (my-cube-root (* 3 3 3))
;Value: 3.0000000000000977

;=> (my-cube-root (* 2 2 2))
;Value: 2.000000000012062

;=> (my-cube-root (* 5 5 5)) 
;Value: 5.000000000287929
