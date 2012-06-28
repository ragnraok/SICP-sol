;
;SICP exercise 1.11

;recursive process
(define (fn n)
 (if (< n 3) 
  n
  (+ (fn (- n 1)) (* 2 (fn (- n 2))) (* 3 (fn (- n 3))))))

;test
;=> (fn 1)
;Value: 1

;=> (fn 2)
;Value 2

;=> (fn 3)
;Value 3

;=> (fn 4)
;Value 11

;iterative process
;a:f(n-1) b:f(n-2) c:f(n-3)
(define (fn-iter a b c count n)
 (if (= count n)
  c
  (fn-iter (+ a (* 2 b)  (* 3 c))
   a
   b
   (+ count 1)
   n)))

(define (fn2 n)
 (fn-iter 2 1 0 0 n))

;test
;=> (fn2 1)
;Value: 1

;=> (fn2 2)
;Value 2

;=> (fn2 3)
;Value 4

;=> (fn2 4)
;Value: 11
