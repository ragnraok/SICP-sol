;
;SICP exercise 1.43

(define (repeated f n)
 (if (= n 1)
  f
  (lambda (x) (f ((repeated f (- n 1)) x)))))

(define (square x) (* x x))

(define (compose f g)
 (lambda (x)
  (f (g x))))

(define (repeated2 f n)
 (if (= n 1)
  f
  (compose f (repeated2 f (- n 1)))))


;test
;1 ]=> ((repeated square 2) 5)
;
;;Value: 625

;1 ]=> ((repeated2 square 2) 5)
;
;;Value: 625
