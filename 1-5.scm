(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))

(test 0 (p))
; applicative order:
    ; eval (p)
        ; return p
    ; eval (test 0 p)
        ; x = 0,
        ; return 0

; normal order:
        ; (s


;WOOPS
; normal order: what I had for applicative order
; applicative order: since (p) calls (p), it never evaluates anything else.
