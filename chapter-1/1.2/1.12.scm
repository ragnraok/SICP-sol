;
;SICP exercise 1.12

;recursive process
(define (pascal row col)
 (cond ((= col 1) 1)
  ((= col row) 1)
  (else (+ (pascal (- row 1) (- col 1))
         (pascal (- row 1) col)))))

;test
;=> (pascal 1 1)
;Value: 1

;=> (pascal 4 2)
;Value 3


           
