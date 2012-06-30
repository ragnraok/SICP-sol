;
;SICP exercise 1.26
(define (expmod base expnum m)
 (cond ((= expnum 0) 1)
  ((even? expnum)
   (remainder (* (expmod base (/ expnum 2) m)
               (expmod base (/ expnum 2) m)) m))
  (else
   (remainder (* base (expmod base (- expnum 1) m)) m))))

;it calls expmod twice

