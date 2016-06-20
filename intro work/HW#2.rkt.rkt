;1a.
(define (Rev3 L) 
  (list (caddr L) (cadr L) (car L)))
;1b.
(define (Rev3-append L) 
  (append (list (caddr L)) (list (cadr L)) (list(car L))))
;1c.
(define (Rev3-cons L) 
  (cons (caddr L) (list (cadr L) (car L))))
;2a.
(define (IsInL2? L a)
  (cond
    ((equal? (car L) a) #t)
    ((equal? (cadr L) a) #t)
    (else #f)))
;2b.
(define (IsInL3? L b)
  (cond
    ((equal? (car L) a) #t)
    ((equal? (cadr L) a) #t)
    ((equal? (caddr L) a) #t)
    (else #f)))
;3.
(define (add3 L) 
  (+ (car L) (cadr L) (caddr L)))
;4.
(define (last2equal? L)
  (if (< (length L ) 2) #f
  (equal?
   (car (reverse L)) 
   (cadr (reverse L)))))
;5.
(define (makepalindrome L) 
  (append L (cdr (reverse L))))