;1.
(define (countsublists a)
  (cond
    ((null? a) 0)
    ((not (list? (car a))) (countsublists (cdr a)))
    (else 
     (+ (+ 1 (countsublists (car a))) (countsublists (cdr a))))))
;2.
(define (flatten a)
  (cond
    ((null? a) '())
    ((not (list? (car a))) 
     (append (list (car a )) (flatten (cdr a))))
    (else (append (flatten (car a)) (flatten (cdr a))))))
;3.
(define (addallintegers a)
  (cond
    ((null? a) 0) 
    ((and (not (list? (car a))) (not (integer? (car a))))
     (addallintegers (cdr a)))
    ((list? (car a))
     (+ (addallintegers (car a)) (addallintegers (cdr a))))
    (else (+ (car a) (addallintegers (cdr a ))))))
;4.
(#t #f #t)