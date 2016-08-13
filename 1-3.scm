(define (sum_of_squares x y)
    (+ (* x x) (* y y)))

;(define (ss_larger x y z)
;    (if (> x y)
;        (if (> x z)
;               (if (> y z) ; x > y > z
;                (sum_of_squares x y)
;                ; x > z > y
;                (sum_of_squares x z))
;               (if (> z y) ; z > x > y
;                (sum_of_squares z x)
;                ; z 
;                ))))

;(define (ss_2 x y z)
;    (if (and (> x z) (> y z)) (sum_of_squares x y)
;        (if (and (> x y) (> z y)) (sum_of_squares x z))
;            (if (and (> y x) (> z x)) (sum_of_squares y z))))

(define (ss_3 x y z)
    (cond ((and (> x z) (> y z)) (sum_of_squares x y))
          ((and (> x y) (> z y)) (sum_of_squares x z))
          ((and (> y x) (> z x)) (sum_of_squares y z))
    )
)
