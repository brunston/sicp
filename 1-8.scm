(define (average x y) 
    (/ (+ x y) 2.0))

(define (square x)
    (* x x))

(define (~ x)
    (exact->inexact x))

(define (improve guess x)
    (/ (+ (/ x  (square guess)) (* 2.0 guess)) 3.0))

(define (good_enough guess newguess)
    (< (/ (abs (- newguess guess)) newguess) 0.0001))

(define (sqrt_iter guess x)
    (if (good_enough guess (improve guess x))
        guess
        (sqrt_iter (improve guess x) x)))

(define (cuberot x)
    (sqrt_iter 1.1 x))


