;
;SICP exercise 1.37

(define (cont-frac-recursive N D k)
 (define (cal i)
  (if (= i k)
   (/ (N k) (D k))
   (/ (N i) 
    (+ (D i) (cal (+ i 1))))))
 (cal 1))

(define (cont-frac-iterative N D k)
 (define (iter i result)
  (if (= i 0)
   result
   (iter (- i 1) 
    (/ (N i) (+ (D i) result)))))
 (iter (- k 1) 
  (/ (N k) (D k))))

(define (gloden-ratio k)
 (+ 1
 (cont-frac-recursive (lambda (i) 1.0)
  (lambda (i) 1.0) k)))

(define (gloden-ratio-2 k)
 (+ 1
  (cont-frac-iterative (lambda (i) 1.0)
   (lambda (i) 1.0) k)))
  
