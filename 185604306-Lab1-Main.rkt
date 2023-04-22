#lang racket

;MAIN

(require "185604306-Lab1-TDA-System.rkt")
(require "185604306-Lab1-TDA-Fecha.rkt")
(require "185604306-Lab1-TDA-RUN.rkt")
(require "185604306-Lab1-TDA-comandos.RTK")

;----------------------------
;----------------------------
;TDA system - system

;Descripción: Funcion que permite al usuario crear un sistema
;Dom: nombre (string)
;Rec: nombre (system)

(define (system nombre)
      (list-system?(list (create-system nombre))))


;Ejemplos:
(system "NewSystem1")
(system "NewSystem2")
(define S0 (system "newSystem3"))
(define S1 (system "newSystem4"))



;----------------------------
;----------------------------
;TDA system - run

;Contructor 
;Descripción: Funcion que permite acceder a la terminar para manipular los archovos y/o carpetas del sistema  
;Dom: system X command (función)
;Rec: system

(define (run command filesystem)
  (list command filesystem))

;(define S0 (run (system "NewSystem") "addDrive"))
;S0

;(run (system “NewSystem”) addDrive)

;(define (run filesystem command)
;  (if (system-null? (car (car filesystem)))
;      "No exite el sistema"
;  (list filesystem command )))


;(run (system "NewSystem") "addDrive")
(define S3 (run (system "NewSystem") "addDrive"))

;Descripción: REGISTER --> Funcion que permite registrar un nuevo usuario en el stack
;Dom: stack x string x string
;Rec: stack
;Tipo de Recursión: Natural

;(define (create-system name drive folder file user)
;  (list name drive folder file user))

;Descripción: Funcion que permite crear un sistema 
;Dom: name (string)
;Rec: system

;(define (system name) (list name))

;Script basico Pruebas
;(define S0 (system "newSystem"))}
;S0



;----------------------------











