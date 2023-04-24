#lang racket

;MAIN

(require "185604306-Lab1-TDA-System.rkt")
(require "185604306-Lab1-TDA-Fecha.rkt")
(require "185604306-Lab1-TDA-RUN.rkt")
(require "185604306-Lab1-TDA-Comandos.rkt")

;----------------------------
;----------------------------

;Ejemplos para probar
(define s0 (create-system "newSystem1"))
(define s1 (create-system "newSystem2"))
(define s2 (create-system "newSystem3"))

(define p0 '(run s0 ((add-drive s0) #\W "SO" 1000)))
(define p1 '(run S1 ((add-drive S0) #\X "SO1" 3000)))
(define p2 '(run S2 ((add-drive S0) #\Y "Util" 2000)))

(define ls (traverse-list (list s0 s1 s2)))
(define lr (list p0 p1 p2))

(define lista-funcion (list "add-drive" "register" "login" "logout" "switch-drive" "md" "cd" "add-file" "" "" "" "" "" ))
;----------------------------
;----------------------------
;TDA system - system
;Descripción: Función que permite al usuario crear un sistema
;Dom: nombre (string)
;Rec: nombre (system)

(define (system name)
  (if (equal? (search-system? name ls) #f)
      (list-system? (list (create-system name)))
      name))

;Ejemplos de uso:
;(system "NewSystem1")
;(system "NewSystem2")
;(system "NewSystem3")

(define S0 (system "newSystem"))


;----------------------------
;----------------------------
;TDA contructor - run 
;Descripción: Función que permite ejecutar un comando (función) sobre un sistema
;Dom: system X command (función)
;Rec: system

(define (run sistema command)
      (if (equal? (function-list command lista-funcion) #t)
          (list system command)
          system))
          
;(define (run command filesystem)
;  (list command filesystem))

;Ejemplos de uso:
;(run (system "NewSystem") add-drive)

;----------------------------
;----------------------------
;TDA system - add-drive
;Descripción: Función que permite añadir una unidad a un sistema 
;Dom: system X
;     letter (char) X name (String) X capacity (int)
;Rec: system

(define add-drive
  (lambda (system)
    (lambda (letter name capacity)
      (if (not (equal? list-add-drive-letter letter))
          (list system (create-add-drive letter name capacity))
          system))))

;Ejemplos para probar
;'(run S0 ((add-drive S0) #\C "SO" 1000))
;'(run S1 ((add-drive S0) #\C "SO1" 3000))
;'(run S2 ((add-drive S0) #\D "Util" 2000))

(define S1 '(run S0 ((add-drive S0) #\C "SO" 1000)))
(define S2 '(run S1 ((add-drive S0) #\C "SO1" 3000)))
(define S3 '(run S2 ((add-drive S0) #\D "Util" 2000)))

