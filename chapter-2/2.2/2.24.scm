;
;SICP exercise 2.24

;the interpreter output is
;1 ]=> (list 1 (list 2 (list 3 4)))
;
;;Value 12: (1 (2 (3 4)))

;the Tree Graph
;   (1 (2 (3 4)))
;       / \
;     1   (2 (3 4))
;           / \ 
;          2  (3 4)
;              / \
;             3  4
