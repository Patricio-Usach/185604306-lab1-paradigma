#lang racket

;TDA RUN

(provide list-function)
(provide comando-run)

;----------------------------
;----------------------------

;Lista de comandos:

;add-drive: Función que permite añadir una unidad a un sistema.
;register: Función que permite registrar un nuevo usuario al sistema.
;login: Función que permite iniciar sesión con un usuario del sistema.
;logout: Función que permite cerrar la sesión de un usuario en el sistema.
;switch-drive: Permite fijar la unidad en la que el usuario realizará acciones.
;md (make directory): Función que permite crear directorio dentro de una unidad.
;cd (change directory): Función que permite cambiar la ruta (path) donde se realizarán operaciones.
;add-file: Función que permite añadir un archivo en la ruta actual.

(define lista-funcion (list "add-drive" "register" "login" "logout" "switch-drive" "md" "cd" "add-file" "" "" "" "" "" ))

;----------------------------
;----------------------------

;TDA contructor
;Descripción: Funcion que permite ejecutar un comando en el sistema 
;Dom: system (string) X función (string)     
;Rec: lista

(define (comando-run sistema funcion) (list sistema funcion))


;TDA Pertenecia

;Descripción: Función permite determinar si un elemento es un stack vacio
;Dom: lista 
;Rec: booleano

(define lista-null? null?)


;Descripción: Funcion que permite validar conmando del run  
;Dom: lista X función (string)     
;Rec: booleano
;recur: natural

(define (list-function funcion lista)
  (if (lista-null? lista)
      #f
      (if (equal? funcion (car lista))
          #t
          (list-function funcion (cdr lista)))))
