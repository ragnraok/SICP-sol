;
;SICP exercise 1.20

(define (my-gcd a b)
 (if (= b 0) 
  a
  (my-gcd b (remainder a b))))

;for applicative-order
;(my-gcd 206 40) ;1
;(my-gcd 40 6)   ;2 
;(my-gcd 6 4)    ;3 
;(my-gcd 4 2)    ;4 
;(my-gcd 2 0)    
;2
;total use 4 times remainder

;for normal-order
;(my-gcd 206 40)
;(my-gcd 40 (remainder 206 40))
;(my-gcd (remainder 206 40) (remainder 40 (remainder 206 40)))
;~~~~
;we can find that in normal-order, there are so many times to call the 'remainder'
