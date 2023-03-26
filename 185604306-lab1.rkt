#lang racket
((lambda (x) (* x x) )2 )

(define cuadrado (lambda (x) (* x x)))

"Funciones anónimas"
(define perimetro_rectangulo (lambda (x y)
                               (+ ((lambda (z) (* z 2)) x)
                                  ((lambda (z) (* z 2)) y) )))