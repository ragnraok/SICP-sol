;
;SICP exercise 1.15
(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine r)
 (if (not (> (abs r) 0.1))
  r
  (p (sine (/ r 3.0)))))

;1 ]=> (trace-entry p)
;
;Unspecified return value
;
;1 ]=> (sine 12.15)
;
;[Entering #[compound-procedure 11 p]
;    Args: 4.9999999999999996e-2]
;[Entering #[compound-procedure 11 p]
;    Args: .1495]
;[Entering #[compound-procedure 11 p]
;    Args: .4351345505]
;[Entering #[compound-procedure 11 p]
;    Args: .9758465331678772]
;[Entering #[compound-procedure 11 p]
;    Args: -.7895631144708228]
;Value: -.39980345741334

;so the procedure p was ealuted 5 times
;in every time, n divided by 3

;the order of growth is O(log n)
