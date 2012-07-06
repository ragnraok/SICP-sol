;
;SICP exercise 1.44

(define dx 0.00001)

(define (average-3 a b c)
 (/ (+ a b c) 3))

(define (smooth f)
 (lambda (x) (average-3 (f (- x dx)) (f x) (f (+ x dx)))))

(define (repeated f n)
 (if (= n 1)
  f
  (lambda (x) (f ((repeated f (- n 1)) x)))))

(define (n-fold f n)
 ((repeated smooth n) f))

(define (square x) (* x x))

;test
;1 ]=> ((smooth square) 5)
;
;;Value: 25.000000000066663

;1 ]=> ((n-fold square 10) 5)
;
;;Value: 25.000000000666663
