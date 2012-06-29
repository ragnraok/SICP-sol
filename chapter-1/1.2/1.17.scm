;
;SICP exercise 1.17 

(define (mul2 a b)
 (if (= b 0)
  0
  (+ a (mul a (- b 1)))))

(define (double n)
 (* n 2))

(define (halve n)
 (/ n 2))

(define (mul-iter a b)
 (cond ((= b 0) 0)
  ((even? b) (double (mul-iter a (halve b))))
  ((odd? b) (+ a (mul-iter a (- b 1))))))
