#lang racket

#|

**Exercise 2.33:** Fill in the missing expressions
to complete the following definitions of some basic list-manipulation
operations as accumulations:

```
(define (map p sequence)
  (accumulate (lambda (x y) ⟨??⟩) 
              nil sequence))

(define (append seq1 seq2)
  (accumulate cons ⟨??⟩ ⟨??⟩))

(define (length sequence)
  (accumulate ⟨??⟩ 0 sequence))
```
|#

(define (length2 s)
    (if (null? s)
        0
	(+ 1 (length (cdr s)))))



(define (reverse lista)
  (define (reverse-iter lista lista-rev)
    (if (= (length2 lista) 0)
        lista-rev
        (reverse-iter (cdr lista) (cons (car lista) lista-rev))
        ))
  (reverse-iter lista null))

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op 
                      initial 
                      (cdr sequence)))))


(define (factorial n)
  (define (rango n)
    (if (= n 1)
        (list 1)
        (append (rango (- n 1)))))
  (accumulate * 1 (rango n)))


;Si quiero sumar solo los primeros numeros, se cambia por la suma y el valor inicial seria 0

(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y))
              null sequence))


(define (length sequence)
  (accumulate (lambda (x y) (+ 1 y)) 0 sequence))

(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

(map sqr (list 1 2 3))




