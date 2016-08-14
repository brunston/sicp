(define (average x y) 
    (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (good_enough guess newguess)
    (> (abs (- 1 (/ newguess guess))) 0.0001))

;(define (good_enough guess x)
;    (< (abs (- (* guess guess) x)) 0.001))

(define (sqrt_iter guess x)
    (if (good_enough guess (improve guess x))
        guess
        (sqrt_iter (improve guess x) x)))

(define (sqrot x)
    (sqrt_iter 1.0 x))
