#lang racket
((lambda (x) (* x x) )2 )

(define cuadrado (lambda (x) (* x x)))

"Funciones anónimas"
(define perimetro_rectangulo (lambda (x y)
                               (+ ((lambda (z) (* z 2)) x)
                                  ((lambda (z) (* z 2)) y) )))


;----------------------------
;TDA Carpeta

;Contructor
;Descripción: Funcion que permite crear una directorio  
;Dom: string 
;Rec: string 

;Pertenecia
;Descripción: Funcion que determina si una directorio    
;Dom: string 
;Rec: boolean

;Selector
;Descripción: Funcion que retorna la lista de careptas de un directorio
;Dom: 
;Rec: lista 

;Modificador 
;Descripción: 
;Dom: 
;Rec: 

