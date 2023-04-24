#lang racket

;TDA COMANDOS

(require "185604306-Lab1-TDA-Fecha.rkt")

(provide create-add-drive)
(provide create-add-drive-null?)
(provide list-add-drive-letter)
(provide list-add-drive-name)

;----------------------------
;----------------------------
;TDA contructor - unidad disco
;Descripción: Función que permite añadir una unidad a un sistema
;Dom: letter (char) X name (String) X capacity (int)
;Rec: lista

(define (create-add-drive letter name capacity)
  (list letter name capacity posting-date))


;TDA pertenecia - unidad disco
;Descripción: Función que validar si el sistema creado es válido 
;Dom: string   
;Rec: booleano

(define create-add-drive-null? (list null null null))


;TDA selectores - unidad disco
;Descripción: Funciones que permiten devolver un x valor del sistema 
;Dom: lista    
;Rec: string

(define list-add-drive-letter car)

(define list-add-drive-name cadr)

(define list-add-drive-capacity caddr)