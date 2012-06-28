;
;SICP exercise 1.9

;the inc and dec
(define (inc a)
 (+ a 1))

(define (dec a)
 (- a 1))

;I rename it as add
(define (add a b)
 (if (= a 0)
  b
  (inc (add (dec a) b))))

;when evaluate (add 1 2), according to subtitution model, 
;the expension of this expression is
;(add 1 2)
;(inc (add 0 2))
;(inc 2)
;3
;this is a linear recursive

;I rename it as add2
(define (add2 a b)
 (if (= a 0)
  b
  (add (dec a) (inc b))))

;when evaluate (add2 1 2), according to subtitution model,
;the expension of this expression is
;(add2 1 2)
;(add 0 3)
;3
;this is a linear iterative




