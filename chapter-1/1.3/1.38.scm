;
;SICP exercise 1.38

(define (cont-frac-recursive N D k)
 (define (cal i)
  (if (= i k)
   (/ (N k) (D k))
   (/ (N i) 
    (+ (D i) (cal (+ i 1))))))
 (cal 1))

(define (N i)
 1)

(define (D i)
 (if (= (remainder (+ i 1) 3) 0)
  (* 2 (/ (+ i 1) 3))
  1))

(define (get-e k)
 (+ 2.0
  (cont-frac-recursive N D k)))

;test

;1 ]=> (get-e 10)
;
;;Value: 2.7182817182817183
;
;1 ]=> (get-e 11)
;
;;Value: 2.7182818352059925
