#lang racket

;TDA RUN

(provide function-list)
(provide comando-run)

;----------------------------
;----------------------------
;Lista de comandos:
;add-drive: Función que permite añadir una unidad a un sistema.
;Register: Función que permite registrar un nuevo usuario al sistema.
;login: Función que permite iniciar sesión con un usuario del sistema.
;logout: Función que permite cerrar la sesión de un usuario en el sistema.
;switch-drive: Permite fijar la unidad en la que el usuario realizará acciones.
;md (make directory): Función que permite crear directorio dentro de una unidad.
;cd (change directory): Función que permite cambiar la ruta (path) donde se realizan operaciones.
;add-file: Función que permite añadir un archivo en la ruta actual.

;----------------------------
;----------------------------
;TDA contructor - run
;Descripción: Función que permite ejecutar un comando en el sistema 
;Dom: system (string) X función (string)     
;Rec: lista

(define (comando-run system funcion) (list system funcion))


;TDA pertenecia - run 
;Descripción: Función permite determinar si un elemento es un stack vacío
;Dom: lista 
;Rec: booleano

(define lista-null? null?)


;Descripción: Función que permite validar comando para ejecutar en el run  
;Dom: función     
;Rec: booleano
;recur: natural

(define (function-list funcion lista)
  (if (lista-null? lista)
      #f
      (if (equal? (car lista) funcion)
          #t
          (function-list funcion (cdr lista)))))
