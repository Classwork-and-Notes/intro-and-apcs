;1.
(+ (/ 1.0 (+ (/ 1 16) 7) ) 3)
;2a.
(modulo (expt 2 12) 13)
;2b.
(modulo (expt 5 22) 23)
;2c.
(modulo (expt 55 6) 7)
;2d.
(modulo (expt 18 42) 43)
;3
(define c 186000)
(define au 93000000)
(/ au c)
;4
(define (Div23 x) (cond ((< x 0) #f) ((even#? x) #t) ((= (modulo x 3) 0) #t) (else #f)))
;5
(define (ToNavyTime x y) (cond ((> x 12) (< y 0) (> y 1 ) #f) ((= x 12) (= y 0) 'midnight) ((= x 12) (= y 1) 'noon) ((= y 1) (+ 12 x)) ((= y 0) x)))