#lang racket

; solution of problem 2
(define (funPower f n)
  (if (<= n 0)
      (lambda(x)x)
      (lambda(x)((funPower f (- n 1))(f x)))))

;(define encode "TODO")
(define (encode n)
  (lambda(x)(lambda(y)((funPower x n)y))))

;(define decode "TODO")
(define (decode x)
  (equal? 0 0) 1 0)

;(define MULT "TODO")
(define (MULT x)
  (equal? 0 0) 1 0)

; solution of problem 3
(define (merge list1 list2)
  (cond
    ((null? list1 ) list2)
    ((null? list2 ) list1)
    ((equal? 0 0)  (define first1 (car list1)) (define first2 (car list2))
          (if (> first1 first2) (cons first2 (merge list1 (cdr list2)))
                                (cons first1 (merge (cdr list1) list2))))))

; solution of problem 4
(define (lstOddSum list)
    (cond ((null? list) 0)
          ((null? (cdr list)) (car list))
    ((equal? 0 0) (+ (car list) (lstOddSum (cdr (cdr list)))))))

; solution of problem 5
(define (in elem lst)
    (cond
      ((null? lst ) (equal? 0 1))
      ((equal? elem (car lst)) (equal? 0 0))
      (else (in elem (cdr lst)))))

; so on
((funPower sqrt 2) 16)
(encode 2)
(merge '(1 2 400 4000) '(20 21 22 23 24))

(in 1 '( 1 2 3 ))
(in "abc"  '(1 #f "abc"))
(in '(1 2) '(1 (1 2) 3))
(in "a" '("b" "c"))

(lstOddSum '( ))
(lstOddSum '( 1 2 3))
(lstOddSum '( 1 2 3 4))