;
;SICP exercise 2.3

(define (average x y) (/ (+ x y) 2))

(define (make-point x y) (cons x y))

(define (x-point point) (car point))

(define (y-point point) (cdr point))

(define (make-segment start-point end-point) (cons start-point end-point))

(define (start-segment segment) (car segment))

(define (end-segment segment) (cdr segment))

(define (midpoint-segment segment) 
 (make-point 
  (average (x-point (start-segment segment)) (x-point (end-segment segment)))
  (average (y-point (start-segment segment)) (y-point (end-segment segment)))))

(define (square x) (* x x))

(define (sqrt-sum x y)
 (sqrt (+ (square x) (square y))))

(define (segment-length segment)
 (sqrt-sum (- (x-point (start-segment segment)) (x-point (end-segment segment))) 
  (- (y-point (start-segment segment)) (y-point (end-segment segment)))))

(define (make-rect width height)
 (cons width height))

(define (rect-width rect)
 (car rect))

(define (rect-height rect)
 (cdr rect))

(define (width-length rect)
 (segment-length (rect-width rect)))

(define (height-length rect)
 (segment-length (rect-height rect)))

(define (rect-perimeter rect)
 (* 2 (+ (width-length rect) (height-length rect))))

(define (rect-area rect)
 (* (width-length rect) (height-length rect)))
