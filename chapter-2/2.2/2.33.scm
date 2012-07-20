;
;SICP exericse 2.33

(define (accumulate op initial sequence)
 (if (null? sequence)
  initial
  (op (car sequence)
   (accumulate op initial (cdr sequence)))))

;(if (null? sequence)
; ()
; ((lambda (x y) <??>) (car sequence))
;  (accumulate (lambda (x y) <??>) () (cdr sequence)))

(define (my-map p sequence)
 (accumulate (lambda (x y) (cons (p x) y)) () sequence))

(define (my-append seq1 seq2)
 (accumulate cons seq2 seq1))

(define (my-length sequence)
 (accumulate (lambda (x y) (+ 1 y)) 0 sequence))
