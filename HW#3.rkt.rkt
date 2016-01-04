;1.
(define (sum-digits a)
  (cond 
    ((<= 0  a  9) a)
    (else (+ (modulo a 10) (sum-digits (quotient a 10))))))
;2.
(define (sum-odd x) 
  (cond 
    ((and (odd? x) (<= 0 x 9)) x) 
    ((and (even? x) (<= 0 x 9)) 0)
    ((even? x) (sum-odd (quotient x 10))) 
    (else (+ (modulo x 10) 
              (sum-odd (quotient x 10))))))
;3.
(define (sum-odd-pos a)
  (cond
    ((<= 0 a 99) (modulo a 10))
    (else (+ (modulo a 10) (modulo (sum-odd-pos (quotient a 100)) 10)))))
;4.
(define (IsDivisibleBy9 a)
  (Cond
   ((= (sum-digits a) 9) #t)
   ((> (sum-digits a) 9) (IsDivisibleBy9 (- (sum-Digits a) 9)))
   (else #f)))
;I think this is actually what you were looking for in 4, but both ways worked.
(define (IsDivisibleBy9 a)
  (Cond
   ((< (sum-digits a) 9) #f)
   ((= (sum-digits a) 9) #t)
   (else (isdivisibleby9 (sum-digits a)))))
;5.
(define (pow2 a b);b always 0
  (cond
    ((>= a (expt 2 b)) (pow2 a (+ b 1)))
    (else (- b 1))))

(define (maxpow2 a) (expt 2 (pow2 a 0)))

(define (tobin a)
  (cond
    ((= a 0) 0)
    ((= a 1) 1)
    (else (+ (expt 10 (pow2 a 0)) 
           (tobin (- a (maxpow2 a)))))))