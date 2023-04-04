#lang racket

(provide create-system)
(provide make-current-date)

;----------------------------
;TDA contructor 

;Contructor 
;Descripción: Funcion que permite crear la estructura de un sistema con system, drive, folder, file y user
;Dom: string   
;Rec: lista


(define (create-system system date)
  (list system date))


;Descripción: Funcion que permite crear la fecha actual de creación y modificación 
;Dom:    
;Rec: number
(define make-current-date (current-seconds))


;Pertenecia
;Descripción: Funcion que permite verificar nombre del sistema 
;Dom: string
;Rec: booleano

(define system-name? string?)
