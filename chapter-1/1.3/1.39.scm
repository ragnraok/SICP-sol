;
;SICP exercise 1.39

(define (square x) (* x x))

(define (cont-frac-recursive N D k)
 (define (cal i)
  (if (= i k)
   (/ (N k) (D k))
   (/ (N i) 
    (+ (D i) (cal (+ i 1))))))
 (cal 1))

(define (tan-cf x k)
 (define (N i)
  (if (= i 1)
   x
   (- (square x))))
 (define (D i)
  (- (* 2 i) 1))

 (exact->inexact
  (cont-frac-recursive N D k)))

;test

;1 ]=> (tan 10)
;
;;Value: .6483608274590866
;
;1 ]=> (tan-cf 10 100)
;
;;Value: .6483608274590866

;1 ]=> (tan 20)
;
;;Value: 2.237160944224742
;
;1 ]=> (tan-cf 20 50)
;
;;Value: 2.237160944224742
