;1.
(define (min-list a)
  (cond
    ((= (length a) 1) (car a))
    (else (min (car a) (min-list (cdr a))))))
;2.
(define (removebeginning a b)
  (cond
    ((null? b) '())
  ((= a 0) b)
  (else (removebeginning (- a 1) (cdr b)))))
;3.
(define (removefirst a b)
  (cond
    ((null? b) '())
    ((equal? a (car b)) (cdr b))
    (else (cons (car b) (removefirst a (cdr b))))))
;4.
(define (lists-equal? a b)
  (cond
    ((and (null? a) (null? b)) #t)
    ((or (null? a) (null? b)) #f)
    ((= (car a) (car b)) (lists-equal? (cdr a) (cdr b)))
    (else #f)))
;5.
(define (issorted a)
  (cond
    ((null? a) #t)
    ((= (length a) 1) #t)
    ((<= (car a) (cadr a)) (issorted (cdr a)))
    (else #f)))
;6.
(define (sortlist a)
    (cond 
      ((null? a ) '())
      (else 
       (append (list (min-list a)) 
               (sortlist (removefirst (min-list a) a))))))