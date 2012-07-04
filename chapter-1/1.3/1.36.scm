;
;SICP exercise 1.36.scm
(define tolerance 0.00001)
(define (fixed-point f first-guess)
 (define (close-enough? v1 v2)
  (< (abs (- v1 v2)) tolerance))
 (define (try guess step)
  (disp-guess guess step)
  (let ((next (f guess)))
   (if (close-enough? guess next)
    (begin 
     (disp-guess next (+ 1 step))
     next)
    (try next (+ step 1)))))
 (try first-guess 1))

(define (disp-guess guess step)
 (display "guess:")
 (display guess)
 (display " ")
 (display "step:")
 (display step)
 (newline))

(define (func x)
 (/ (log 1000) (log x)))

(define (average x y)
 (/ (+ x y) 2))

(define (average-damp f)
 (lambda (x) (average x (f x))))

 
;test
;without damp

;1 ]=> (fixed-point func 2.0)
;guess:2. step:1
;guess:9.965784284662087 step:2
;guess:3.004472209841214 step:3
;guess:6.279195757507157 step:4
;guess:3.759850702401539 step:5
;guess:5.215843784925895 step:6
;guess:4.182207192401397 step:7
;guess:4.8277650983445906 step:8
;guess:4.387593384662677 step:9
;guess:4.671250085763899 step:10
;guess:4.481403616895052 step:11
;guess:4.6053657460929 step:12
;guess:4.5230849678718865 step:13
;guess:4.577114682047341 step:14
;guess:4.541382480151454 step:15
;guess:4.564903245230833 step:16
;guess:4.549372679303342 step:17
;guess:4.559606491913287 step:18
;guess:4.552853875788271 step:19
;guess:4.557305529748263 step:20
;guess:4.554369064436181 step:21
;guess:4.556305311532999 step:22
;guess:4.555028263573554 step:23
;guess:4.555870396702851 step:24
;guess:4.555315001192079 step:25
;guess:4.5556812635433275 step:26
;guess:4.555439715736846 step:27
;guess:4.555599009998291 step:28
;guess:4.555493957531389 step:29
;guess:4.555563237292884 step:30
;guess:4.555517548417651 step:31
;guess:4.555547679306398 step:32
;guess:4.555527808516254 step:33
;guess:4.555540912917957 step:34
;guess:4.555532270803653 step:35
;;Value: 4.555532270803653

;with damp

;guess:2. step:1
;guess:5.9828921423310435 step:2
;guess:4.922168721308343 step:3
;guess:4.628224318195455 step:4
;guess:4.568346513136242 step:5
;guess:4.5577305909237005 step:6
;guess:4.555909809045131 step:7
;guess:4.555599411610624 step:8
;guess:4.5555465521473675 step:9
;guess:4.555537551999825 step:10
;;Value: 4.555537551999825

;so, with average damping, it converge more faster
