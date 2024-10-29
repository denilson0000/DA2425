#lang racket

 (require math/statistics)

(define (next-line-it file)
  (let ((line (read-line file 'any)))
    (unless (eof-object? line)
      (displayln line)
      (next-line-it file))))
; llamada para leer un archivo.
(call-with-input-file "ej_pts_01.txt" next-line-it)
(sort (list 5 3 4) <) ; Ordenar una lista

(string-split "20 0" " ") ; separar un string por un espacio
(string->number "20") ; Convertir un string en un numero

(define coordenadas (list "20 0" "30 10" "40 60" "80 90"))

(string->number(car (string-split (car coordenadas) " ")))

;(cdr(list "20 0" "30 10" "40 30" "70 90"))

(cons 3 null)