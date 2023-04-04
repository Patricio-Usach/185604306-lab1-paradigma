#lang racket

;MAIN

(require "185604306-Lab1-TDA-System.rkt")
(require "185604306-Lab1-TDA-Fecha.rtk")

;----------------------------
;Descripción: Funcion que permite al usuario crear un sistema
;Dom: string
;Rec: stack

(define (system nombre)
      (create-system nombre make-current-date))


(system "NewSystem1")
(system "NewSystem2")


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
;TDA system - run

;Contructor 
;Descripción: Funcion que permite acceder a la terminar para manipular los archovos y/o carpetas del sistema  
;Dom: system X command (función)
;Rec: system

(define (run command filesystem)
  (list command filesystem))

;(define S0 (run (system "NewSystem") "addDrive"))
;S0

;----------------------------
;TDA add-drive 

;Contructor 
;Descripción: Funcion que permite crear una unidad "disco" el sistema, ejemplo: unidad C
;Dom: name (string)
;Rec: system

;Selector  
;Descripción: Funcion que permite selecionar la unidad del a trabajar en el sistema, ejemplo; elegir de la unidad C a la D
;Dom: name (string)
;Rec: system

;Pertenecia
;Descripción: Funcion que permite validar, si la unidad a crear esta disponible
;Dom: name (string)
;Rec: boolean

;----------------------------


;Pertenecia
;Descripción: Funcion que permite validar, si a funcion ingresada es valida para el sistema
;Dom: name (string)
;Rec: boolean


;Selector (DIR)
;Descripción: Funcion que permite listar la ruta espesifica o toda la ruta
;Dom: system X params (String list)
;Rec: string (formateado para poder visualizarlo con display)

;Modificador (CD)
;Descripción: Funcion que permite cambiar la ruta de un archivo o carpeta
;Dom: system X path or folderName (String)
;Rec: string

;Pertenecia (CD)
;Descripción: Funcion que permite validar, si existe un archivo y/o carepta con el mismo nombre
;Dom: system X path or folderName (String)
;Rec: boolean



;--------------------------
;--------------------------










;(02) TDA system - contructor (contruir un sistema)  (contructor)
	;(04) TDA system - add-drive (función que permite añadir una unidad a un sistema. La letra de la unidad es única) - (contructor, selector, pertenecia, #modificador#)
	;(03) TDA system - rum (creación de archivos, carpetas, renombrar, copiar, mover, eliminar, debe dejar un registro de la fecha de modificación, además de verificar los permisos del recurso que será alterado) - (contructor, pertenecia)
		;(17) TDA system - dir (función para listar el contenido de un directorio específico o de toda una ruta, lo que se determina mediante parámetros) - (selector, #pertenecia#)
		;(10) TDA system - cd (change directory) (cambiar de ruta) - (selector, pertenecia)
		;(09) TDA system - md (make directory) (crear directorio dentro de una unidad a partir del nombre especificado "con sus respectivos registros") - (contructor, modificador, pertenecia)
		;(11) TDA system - add-file (función que permite añadir un archivo en la ruta actual) - (contructor, pertenecia)
		;(14) TDA system - copy (función para copiar un archivo o carpeta desde una ruta origen a una ruta destino) - (contructor, pertenecia)
		;(15) TDA system - move (función para mover un archivo o carpeta desde una ruta origen a una ruta destino) - (contructor, pertenecia)
		;(16) TDA system - ren (función para renombrar una carpeta o archivo) - (modificador, pertenecia)
		;(12) TDA system - del (eliminar un archivo o varios archivos en base a un patrón determinado. El contenido eliminado se va a la papelera) - (modificador)
		;(13) TDA system - rd (eliminar una carpeta, siempre y cuando este vacia) - (modificador)
		;(23) TDA system - grep (función que permite buscar dentro del contenido de un archivo específico o dentro de una ruta) - (selector)
		;(24) TDA system - view-trash (función que permite obtener el contenido de la papelera de reciclaje de un sistema) - (selector)
		;(25) TDA system - restore (función que restaurar contenido específico dentro de la papelera para ubicarlo en su ubicación original) - (contructor, selector, pertenecia, modificador)

	;(05) TDA system - register (función que permite registrar un nuevo usuario al sistema. El nombre de usuario es único y no puede ser duplicado) - (contructor, selector, pertenecia)
	;(06) TDA system - login (función que permite iniciar sesión con un usuario del sistema, solo si éste existe) - (selector, modificador, pertenecia)
	;(07) TDA system - logout (función que permite cerrar la sesión de un usuario en el sistema) - (selector, modificador, pertenecia)
	;(08) TDA system - switch-drive (permite fijar la unidad en la que el usuario realizará acciones "permisos de usuario")  - (selector, pertenecia)

;(18) TDA system - format (función para formatear una unidad dada su letra, lo que borra todo su contenido, además de indicar nuevo nombre, pero conservando capacidad) - (contructor, selector, pertenecia, #modificador#)
      ;(19) TDA system - encryt(función para encriptar un archivo o carpeta y todo su contenido (nombres de carpetas, subcarpetas, archivos y el contenido de éstos)) - (modificador, pertenecia)
      ;(20) TDA system - decrypt (función para desencriptar un archivo o carpeta y todo su contenido (nombres de carpetas, subcarpetas, archivos y el contenido de éstos)) - (modificador, pertenecia)
      ;(21) TDA system - plus-one (función que transforma un String sumando al código ASCII de cada carácter un 1. Está función se puede usar en combinación con la función encrypt) - (modificador, pertenecia)
      ;(22) TDA system - minus-one (función que transforma un String restando al código ASCII de cada carácter un 1. Está función se puede usar en combinación con la función encrypt) - (modificador, pertenecia)


;----------------------------

;TDA Registro de fecha
;Contructor
;Descripción: Funcion que permite crear una fecha, para registrar los cambio en el sistema 
;Dom: entero X entero X entero
;Rec: lista

(define (date d m a)
  (if (and (integer? d) (integer? m) (integer? a) (> d 0) (< d 32) (> m 0)(< m 13) (> a 0))
      (list d m a)
      null))

;NOTA: integer devuelve un #T si el valor es entero, caso contrario un #F

;Pertenecia
;Descripción: Funcion que determina si el elemento ingresado tiene el formato de fecha
;Dom: ingresa el valor de la funcion fecha, para validar la informacion
;Rec: boolean

(define (fecha? f)
  (and (list? f) 
       (= (length f) 3)
       (not (null? (date (car f) (cadr f) (caddr f))))))


