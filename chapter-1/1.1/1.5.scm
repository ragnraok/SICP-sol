;SICP exercise 1.5
(define (p) (p))
(define (test x y) (if (= x 0) 0 y))

;>=(test 0 (p))
;infinite loop, use Ctrl+z the kill the interpreter

;in applicative-order, the value will be evaluate when it is pass to the procedure
;or when is applicable, so my mit-scheme is applicative-order, it will fall into 
;the infinte loop

;but in normal-order, the result will not evaluate until they need, so it will 
;substitute 0 (p) in test first, and then evalute the predicate, output 0
;so in the normal-order, the result is 0
