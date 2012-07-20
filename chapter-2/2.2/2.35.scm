;
;SICP exericse 2.35

(define (accumulate op initial sequence)
 (if (null? sequence)
  initial
  (op (car sequence)
   (accumulate op initial (cdr sequence)))))

(define (count-leaves tree)
 (accumulate + 0
  (map (lambda (sub-tree)
        (if (not (pair? sub-tree))
         1
         (count-leaves sub-tree)))
   tree)))
