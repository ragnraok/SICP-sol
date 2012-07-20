;
;SICP exericse 2.39

(define (fold-left op initial sequence)
 (define (iter result rest)
  (if (null? rest)
   result
   (iter (op result (car rest))
    (cdr rest))))
 (iter initial sequence))

(define (accumulate op initial sequence)
 (if (null? sequence)
  initial
  (op (car sequence)
   (accumulate op initial (cdr sequence)))))

(define (fold-right op initial sequence) (accumulate op initial sequence))

(define (reverse-1 sequence)
 (fold-left (lambda (x y) (cons y x)) () sequence))

(define (reverse-2 sequence)
 (fold-right (lambda (x y) (append y (list x))) () sequence))
