#lang racket
((lambda (x) (* x x) )2 )

(define cuadrado (lambda (x) (* x x)))

"Funciones anónimas"
(define perimetro_rectangulo (lambda (x y)
                               (+ ((lambda (z) (* z 2)) x)
                                  ((lambda (z) (* z 2)) y) )))


;(02) TDA system - contructor (contruir un sistema)
;(03) TDA system - rum (creación de archivos, carpetas, renombrar, copiar, mover, eliminar, debe dejar un registro de la fecha de modificación, además de verificar los permisos del recurso que será alterado)
;(04) TDA system - add-drive (función que permite añadir una unidad a un sistema. La letra de la unidad es única)
;(05) TDA system - register (función que permite registrar un nuevo usuario al sistema. El nombre de usuario es único y no puede ser duplicado)
;(06) TDA system - login (función que permite iniciar sesión con un usuario del sistema, solo si éste existe)
;(07) TDA system - logout (función que permite cerrar la sesión de un usuario en el sistema)
;(08) TDA system - switch-drive (permite fijar la unidad en la que el usuario realizará acciones "permisos de usuario")
;(09) TDA system - md (make directory) (rear directorio dentro de una unidad a partir del nombre especificado "con sus respectivos registros")
;(10) TDA system - cd (change directory) (cambiar de ruta)
;(11) TDA system - add-file (función que permite añadir un archivo en la ruta actual)
;(12) TDA system - del (eliminar un archivo o varios archivos en base a un patrón determinado. El contenido eliminado se va a la papelera)
;(13) TDA system - rd (elimonar una carpeta, siempre y cuando este vacia)
;(14) TDA system - copy (función para copiar un archivo o carpeta desde una ruta origen a una ruta destino)
;(15) TDA system - move (función para mover un archivo o carpeta desde una ruta origen a una ruta destino)
;(16) TDA system - ren (unción para renombrar una carpeta o archivo)
;(17) TDA system - dir (función para listar el contenido de un directorio específico o de toda una ruta, lo que se determina mediante parámetros)
;(18) TDA system - format ( función para formatear una unidad dada su letra, lo que borra todo su contenido, además de indicar nuevo nombre, pero conservando capacidad)
      ;(19) TDA system - encryt(función para encriptar un archivo o carpeta y todo su contenido (nombres de carpetas, subcarpetas, archivos y el contenido de éstos))
      ;(20) TDA system - decrypt (función para desencriptar un archivo o carpeta y todo su contenido (nombres de carpetas, subcarpetas, archivos y el contenido de éstos))
      ;(21) TDA system - plus-one (función que transforma un String sumando al código ASCII de cada carácter un 1. Está función se puede usar en combinación con la función encrypt)
      ;(22) TDA system - minus-one (función que transforma un String restando al código ASCII de cada carácter un 1. Está función se puede usar en combinación con la función encrypt)
;(23) TDA system - grep (función que permite buscar dentro del contenido de un archivo específico o dentro de una ruta)
;(24) TDA system - view-trash (función que permite obtener el contenido de la papelera de reciclaje de un sistema)
;(25) TDA system - restore (función que restaurar contenido específico dentro de la papelera para ubicarlo en su ubicación original)


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
		;(13) TDA system - rd (elimonar una carpeta, siempre y cuando este vacia) - (modificador)
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
;TDA contructor 

;Contructor 
;Descripción: Funcion que permite crear un sistema 
;Dom: name (string)
;Rec: system

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
;TDA rum 

;Contructor 
;Descripción: Funcion que permite acceder a la terminar para manipular los archovos y/o carpetas del sistema  
;Dom: system X command (función)
;Rec: system

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
;creando un sistema
(define S0 (system "newSystem"))

;añadiendo unidades. Incluye caso S2 que intenta añadir unidad con una letra que ya existe
(define S1 ((run S0 add-drive) #\C "SO" 1000))
(define S2 ((run S1 add-drive) #\C "SO1" 3000))
(define S3 ((run S2 add-drive) #\D "Util" 2000))

;añadiendo usuarios. Incluye caso S6 que intenta registrar usuario duplicado
(define S4 ((run S3 add-user) "user1"))
(define S5 ((run S4 add-user) "user1"))
(define S6 ((run S5 add-user) "user2"))

;iniciando sesión con usuarios. Incluye caso S8 que intenta iniciar sesión con user2 sin antes haber salido con user1
(define S7 ((run S6 login) "user1"))
(define S8 ((run S7 login) "user2"))

;cerrando sesión user1 e iniciando con user2
(define S9 (run S8 logout))
(define S10 ((run S9 login) "user2"))

;cambios de unidad, incluyendo unidad inexistente K
(define S11 ((run S10 switch-drive) #\K))
(define S12 ((run S11 switch-drive) #\C))

;añadiendo carpetas. Incluye casos de carpetas duplicadas.
(define S13 ((run S12 md) "folder1"))
(define S14 ((run S13 md) "folder2"))
(define S15 ((run S14 md) "folder2"))
(define S16 ((run S15 md) "folder3"))


;ingresa a carpeta folder2
(define S17 ((run S16 cd) "folder2"))

;crea subcarpeta folder21 dentro de folder2 (incluye caso S18 de carpeta con nombre duplicado)
(define S18 ((run S17 md) "folder21"))
(define S19 ((run S18 md) "folder21"))

;ingresa a subcarpeta e intenta ingresar a subcarpeta inexistente S21
(define S20 ((run S19 cd) "folder21"))
(define S21 ((run S20 cd) "folder22"))

;vuelve a carpeta anterior
(define S22 ((run S21 cd) ".."))

;vuelve a ingresar folder21
(define S23 ((run S22 cd) "folder21"))

;crea subcarpeta folder211 e ingresa
(define S24 ((run S23 md) "folder211"))
(define S25 ((run S24 cd) "folder211"))

;vuelve a la raíz de la unidad c:/
(define S26 ((run S25 cd) "/"))

;se cambia de unidad
(define S27 ((run S26 switch-drive) #\D))

;crea carpeta e ingresa a carpeta
(define S28 ((run S27 md) "folder5"))
(define S29 ((run S28 cd) "folder5"))

;se cambia de carpeta en base a la ruta especificada
(define S30 ((run S29 cd) "C:/folder1/"))

;formateando drive D:
(define S31 ((run S30 format) #\D "newD"))

;añadiendo archivos
(define S32 ((run S31 add-file) (file "foo1.txt" "txt" "hello world 1")))
(define S33 ((run S32 add-file) (file "foo2.txt" "txt" "hello world 2")))
(define S34 ((run S33 add-file) (file "foo3.docx" "docx" "hello world 3")))
(define S35 ((run S34 add-file) (file "goo4.docx" "docx" "hello world 4" \#h \#r))) ;con atributos de seguridad oculto (h) y de solo lectura (r)

;eliminando archivos
(define S36 ((run S35 del) "*.txt"))
(define S37 ((run S35 del) "f*.docx"))
(define S38 ((run S35 del) "goo4.docx"))
(define S39 ((run S35 cd) ".."))
(define S40 ((run S35 del) "folder1"))

;borrando una carpeta
(define S41 ((run S39 rd) "folder1"))  ;no debería borrarla, pues tiene archivos
(define S42 ((run S41 cd) "folder1"))
(define S43 ((run S42 del) "*.*"))
(define S44 ((run S43 cd) ".."))
(define S45 ((run S44 rd) "folder1"))

;copiando carpetas y archivos
(define S46 ((run S35 copy) "foo1.txt" "c:/folder3/"))
(define S47 ((run S46 cd) ".."))
(define S48 ((run S47 copy) "folder1" "d:/"))

;moviendo carpetas y archivos
(define S49 ((run S48 move) "folder3" "d:/"))
(define S50 ((run S49 cd) "folder1"))
(define S51 ((run S50 move) "foo3.docx" "d:/folder3/"))

;renombrando carpetas y archivos
(define S52 ((run S51 ren) "foo1.txt" "newFoo1.txt"))
(define S53 ((run S52 ren) "foo2.txt" "newFoo1.txt")) ;no debería efectuar cambios pues ya existe archivo con este nombre
(define S54 ((run S53 cd) ".."))
(define S55 ((run S54 ren) "folder1" "newFolder1"))

;listando la información
(display (run S16 dir))
(display (run S55 dir))
(display ((run S55 dir) "/s")) ;muestra carpetas y subcarpetas de la unidad C
(display ((run S55 dir) "/s /a")) ;muestra todo el contenido de carpetas y subcarpetas de la unidad C incluyendo archivo oculto goo4.docx

;encriptando archivos y carpetas
(define S56 ((run S55 encrypt) plus-one minus-one "1234" "newFolder1"))
(define S57 ((run S56 switch-drive) \#D))
(define S58 ((run S57 cd) "folder3"))
(define S59 ((run S58 encrypt) plus-one minus-one "4321" "foo3.docx"))

;desencriptando archivos y carpetas
(define S60 ((run S59 decrypt) "1234" "foo3.docx")) ;no logra desencriptar por clave incorrecta
(define S61 ((run S60 decrypt) "4321" "foo3.docx"))
(define S62 ((run S61 switch-drive) \#C)
(define S63 ((run S62 decrypt) "1234" "newFolder1"))

;;buscando contenido
(define S64 ((run S63 cd) "newFolder1"))
(display ((run S64 grep) "hello" "newFoo1.txt"))
(display ((run S64 grep) "hello" "*.*"))

;viendo la papelera
(diplay (run S45 viewTrash))

;restaurando
(define S65 ((run S45 restore) "folder1"))

