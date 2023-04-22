#lang racket

;TDA COMANDOS

(provide create-system)
(provide system-null?)
(provide list-system?)

;----------------------------
;TDA contructor 

;Contructor 
;Descripción: Funcion que permite añadir una unidad a un sistema.
;Dom: system    
;Rec: letter (char) X name (String) X capacity (int)

(define (create-add-drive system-add-drive)
  (define (create-system-int system-int date)
    (list system-int date))
  (create-system-int system-int posting-date))



;; Dom: System X
;;      letter (char) X name (str) X capacity (int)
;; Rec: System      
(define add-drive
  (lambda (system)
    (lambda (letter name capacity)
      (if (not (exists-system-drive? letter system)) ;; la letra de la unidad es única, no debo agregar una leta que ya exista
          (system-add-drive system    ;;if true then create a new system with the drive
                            (make-drive letter name capacity))
          system)))) ;;else return system




;Pertenecia
;Descripción: Funcion que validar si el systema creado es valido 
;Dom: string   
;Rec: booleano

(define system-null? (list null null))


;Selectores
;Descripción: Funcion extrae el nombre del system
;Dom: lista    
;Rec: string

(define list-system? caar)