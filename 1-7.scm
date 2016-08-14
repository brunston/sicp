(define (average x y) 
    (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (good_enough guess newguess)
    (< (/ (abs (- newguess guess)) newguess) 0.000001))

(define (sqrt_iter guess x)
    (if (good_enough guess (improve guess x))
        guess
        (sqrt_iter (improve guess x) x)))

(define (sqrot x)
    (sqrt_iter 1.0 x))


