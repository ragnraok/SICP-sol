;
;SICP exercise 2.19
(define (no-more? coin-values)
 (null? coin-values))

(define (except-first-denomination coin-values)
 (cdr coin-values))

(define (first-denomination coin-values)
 (car coin-values))

(define (cc amount coin-values)
    (cond ((= amount 0)
            1)
          ((or (< amount 0) (no-more? coin-values))
            0)
          (else
            (+ (cc amount
                   (except-first-denomination coin-values))
               (cc (- amount
                      (first-denomination coin-values))
                   coin-values)))))
          
;the order of the list coin-values is not effect the answer produced by cc
;because it is recurisve remove the element in the list until find the 
;suitable answser, the order will not effect it
