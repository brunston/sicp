(define (a-plus-absval-b a b)
    ((if (> b 0) + -) a b))
; if b > 0, add. if b < 0, subtract b from a (i.e. a - (negative number))
