;
;SICP exercise 2.29
(define (make-mobile left right)
 (list left right))

(define (make-branch length structure)
 (list length structure))

(define (left-branch mobile)
 (car mobile))

(define (right-branch mobile)
 (cadr mobile))

(define (branch-length branch)
 (car branch))

(define (branch-structure branch)
 (cadr branch))

(define (total-weight mobile)
 (+ (branch-weight (left-branch mobile))
  (branch-weight (right-branch mobile))))

(define (branch-weight branch)
 (if (pair? (branch-structure branch)) (total-weight (branch-structure branch))
  (branch-structure branch)))

(define (branch-torque branch)
 (* (branch-length branch) (branch-weight branch)))

(define (same-torque? left-branch right-branch)
 (= (branch-torque left-branch) (branch-torque right-branch)))

(define (mobile-balanced? mobile)
 (and ((same-torque? (left-branch mobile) (right-branch mobile)) 
       (branch-balanced? (left-branch mobile)) 
       (branch-balanced? (right-branch mobile)))))

(define (branch-balanced? branch)
 (if (pair? (branch-structure branch) (mobile-balanced? branch))
  #t))

;for the new version, just need to modify left-branch, right-branch, branch-length and branch-weight

