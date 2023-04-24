#lang racket

;TDA SYSTEM

(require "185604306-Lab1-TDA-Fecha.rkt")

(provide create-system)
(provide system-null?)
(provide list-system?)
(provide search-system?)
(provide traverse-list)

;----------------------------
;----------------------------
;TDA contructor system 
;Descripción: Función que permite crear la estructura de un sistema con system, drive, folder, file y user
;Dom: string   
;Rec: lista

(define (create-system system-int)
  (define (create-system-int system-int date)
    (list system-int date))
  (create-system-int system-int posting-date))


;TDA pertenecia system
;Descripción: Función que validar si el sistema creado es válido 
;Dom: string   
;Rec: booleano

(define system-null? null)


;Descripción: Función que permite validar la existencia de un sistema 
;Dom: string   
;Rec: booleano
;Recur: natural

(define (search-system? system-name L )
  (if (null? L)
      #f
      (if (equal? (car L) system-name)
          #t
          (search-system? system-name (cdr L)))))


;TDA selectores system
;Descripción: Funcion extrae el nombre del system creado
;Dom: lista    
;Rec: string 

(define list-system? caar)


;Descripción: Función extraer el nombre del system de una listas de listas
;Dom: lista de lista    
;Rec: lista

(define (traverse-list L)
  (if (null? L)
      null
      (cons (caar L) (traverse-list (cdr L)))))

