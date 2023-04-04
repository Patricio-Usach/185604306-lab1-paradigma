#lang racket

;TDA FECHA

(provide make-current-date)

;----------------------------
;TDA contructor 
;Descripción: Funcion que permite crear la fecha actual de creación y modificación 
;Dom:    
;Rec: number

(define make-current-date (current-seconds))