;
;SICP 1.34

;the output is

;1 ]=> (f f)
;
;The object 2 is not applicable.
;To continue, call RESTART with an option number:
; (RESTART 2) => Specify a procedure to use in its place.
; (RESTART 1) => Return to read-eval-print level 1.

;the applicable order of the procedure is
;(f f)
;(f 2)
;(2 2)
;because 2 is not a procedure, so it is not applicable
