#lang racket

#|

**Special Exercise:** As if the last few exercises weren't brain bending
enough, it turns out that all of boolean-logic can be encoded
solely as procedures.  Define this:

```
(define (TRUE x y) x)
(define (FALSE x y) y)
```

Now, show how you could use those two functions (and only those
functions) to define the common boolean-logic operators:

```
(define (NOT) ...)
(define (AND x y) ...)
(define (OR x y) ...)

; Example
(NOT TRUE)         ;-> FALSE
(NOT FALSE)        ;-> TRUE
(AND TRUE TRUE)    ;-> TRUE
(AND TRUE FALSE)   ;-> FALSE
```
|#

(define (TRUE x y) x)
(define (FALSE x y) y)

(define (NOT x)
  (x FALSE TRUE))

(define (AND x y)
  (x y FALSE))


(define (OR x y)
  (x TRUE y))

; Example
(NOT TRUE)         ;-> FALSE
(NOT FALSE)        ;-> TRUE
(AND TRUE TRUE)    ;-> TRUE
(AND TRUE FALSE)   ;-> FALSE
(OR FALSE FALSE)   ;-> FALSE