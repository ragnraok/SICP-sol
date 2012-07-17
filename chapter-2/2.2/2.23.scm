;
;SICP exercise 2.23
(define (my-for-each proc items)
 (cond ((not (null? items)) (proc (car items)) (my-for-each proc (cdr items))))) 

;cond支持多条表达式顺序执行
