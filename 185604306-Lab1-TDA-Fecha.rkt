#lang racket

;TDA FECHA

(provide posting-date)

;----------------------------
;TDA contructor 
;Descripción: Funcion que permite crear la fecha actual de creación y modificación 
;Dom:    
;Rec: number

(define posting-date (current-seconds))