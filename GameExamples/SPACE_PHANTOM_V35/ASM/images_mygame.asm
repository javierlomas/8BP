IMAGE_LIST
;---------------------------------------------------------------------------------------------
;pondremos aqui una lista de las imagenes que queremos usar sin especificar la direccion de memoria desde basic
; de este modo el comando |SETUPSP,<id>,9,<address> se transforma en |SETUPSP,<id>,9,<numero>
; la ventaja de no usar direcciones de memoria en basic es que si ampliamos los graficos o se reensamblan en 
; direcciones diferentes, el numero que asignemos no cambiara
; NO tienen que tener todas un numero, solo aquellas que vamos a usar con |setupsp, id, 9,<num>
; se empiezan a numerar en 16
; podemos usar hasta 255 imagenes especificadas de este modo 
; no hace falta que la lista tenga 255 elementos. es de longitud variable, incluso puede estar vacia
;----------------------------------------------------------------------------------------------
dw JOE_RIGHT;16
dw JOE_LEFT; 17
DW NAVE_0; 18
DW NAVE_1; 19
DW NAVE_2; 20
DW NAVE_3; 21
DW STAR; 22
DW PLANET_0;23
DW PLANET_1;24
DW PLANET_2;25
DW MARCO_L; 26
DW MARCO_R; 27
DW CORAZON;28
DW ALA_L;29
DW ALA_R;30
DW MONEDA;31
DW FRAGMENT;32
DW BORRA;33
DW PIEDRA;34
DW trozo;35
DW ultima; 36
DW CABEZA_DRAGON_2;37
DW BODY_DRAGON_2;38
DW LUZ;39




; ahora las imagenes
IMAGE0
;--------------------------------------------------------------------------------------
; si no vas a usar el comando PRINTAT,  sino simplemente los caracteres del amstrad, entonces
; puedes comentar la siguientes 3 lineas
_BEGIN_ALPHABET
;read "alphabet_default.asm"
read "alphabet_phantom.asm"
_END_ALPHABET
;=================================================
;=================================================
_BEGIN_FLIP_IMAGES
;=================================================
; aqui pon las imagenes que se definen como otras existentes pero flipeadas horizontalmente. 

;JOE_LEFT dw JOE_RIGHT; joe_left sera la version flipeada de joe_right
MARCO_R DW MARCO_L
ALA_R	DW ALA_L

;=================================================
_END_FLIP_IMAGES
;=================================================
;=================================================
_BEGIN_IMAGES
;=================================================
ALA_L
;------ BEGIN IMAGE --------
db 6 ; ancho
db 13 ; alto
db 48 , 48 , 48 , 48 , 48 , 35 
db 33 , 3 , 3 , 3 , 3 , 19 
db 3 , 3 , 3 , 3 , 3 , 33 
db 18 , 48 , 49 , 51 , 51 , 3 
db 33 , 3 , 3 , 3 , 18 , 3 
db 33 , 48 , 48 , 51 , 50 , 3 
db 48 , 3 , 3 , 3 , 18 , 35 
db 48 , 48 , 18 , 49 , 35 , 49 
db 48 , 48 , 33 , 3 , 3 , 18 
db 48 , 48 , 48 , 48 , 48 , 3 
db 48 , 48 , 48 , 48 , 33 , 2 
db 48 , 48 , 48 , 33 , 3 , 48 
db 48 , 48 , 48 , 33 , 18 , 48 
;------ END IMAGE --------
CORAZON
;------ BEGIN IMAGE --------
db 5 ; ancho
db 16 ; alto
db 49 , 50 , 48 , 49 , 50 
db 35 , 19 , 48 , 35 , 19 
db 3 , 3 , 50 , 3 , 3 
db 3 , 3 , 19 , 3 , 3 
db 3 , 33 , 3 , 3 , 3 
db 18 , 3 , 3 , 3 , 3 
db 18 , 3 , 3 , 3 , 3 
db 18 , 3 , 3 , 3 , 3 
db 3 , 35 , 3 , 3 , 3 
db 35 , 33 , 3 , 3 , 19 
db 33 , 19 , 3 , 3 , 18 
db 49 , 18 , 3 , 3 , 50 
db 48 , 3 , 3 , 3 , 48 
db 48 , 35 , 3 , 19 , 48 
db 48 , 33 , 3 , 18 , 48 
db 48 , 48 , 3 , 50 , 48 
;------ END IMAGE --------
MARCO_L
;------ BEGIN IMAGE --------
db 4 ; ancho
db 16 ; alto
db 48 , 48 , 48 , 48 
db 50 , 48 , 48 , 48 
db 19 , 48 , 48 , 48 
db 137 , 50 , 48 , 48 
db 204 , 19 , 48 , 48 
db 204 , 137 , 50 , 48 
db 204 , 19 , 48 , 48 
db 137 , 50 , 48 , 48 
db 19 , 48 , 48 , 48 
db 19 , 48 , 48 , 48 
db 19 , 48 , 48 , 48 
db 19 , 48 , 48 , 48 
db 137 , 50 , 48 , 48 
db 204 , 19 , 48 , 48 
db 204 , 137 , 50 , 48 
db 204 , 204 , 19 , 48 
;------ END IMAGE --------
;------ BEGIN IMAGE --------
PLANET_0
db 5 ; ancho
db 11 ; alto
db 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 
db 0 , 80 , 180 , 0 , 0 
db 0 , 240 , 60 , 40 , 0 
db 0 , 240 , 60 , 40 , 0 
db 0 , 180 , 60 , 40 , 0 
db 0 , 180 , 60 , 40 , 0 
db 0 , 240 , 60 , 40 , 0 
db 0 , 80 , 240 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------
;------ BEGIN IMAGE --------
PLANET_1
db 9 ; ancho
db 19 ; alto
db 0 ,0 , 0 , 0 , 0 , 0 , 0 , 0        ,0   
db 0 ,0 , 0 , 0 , 0 , 0 , 0 , 0        ,0
db 0 ,0 , 0 , 20 , 60 , 160 , 0 , 0    ,0
db 0 ,0 , 0 , 180 , 60 , 240 , 0 , 0   ,0
db 0 ,0 , 0 , 60 , 60 , 240 , 160 , 0  ,0
db 0 ,0 , 80 , 60 , 60 , 120 , 160 , 0 ,0
db 0 ,0 , 20 , 60 , 60 , 240 , 160 , 0 ,0
db 0 ,0 , 20 , 60 , 120 , 120 , 240 , 0,0 
db 0 ,0 , 20 , 60 , 120 , 120 , 240 , 0,0 
db 0 ,0 , 20 , 60 , 120 , 120 , 120 , 0,0 
db 0 ,0 , 20 , 60 , 60 , 240 , 120 , 0 ,0
db 0 ,0 , 80 , 60 , 60 , 60 , 240 , 0  ,0
db 0 ,0 , 80 , 60 , 60 , 60 , 240 , 0  ,0
db 0 ,0 , 80 , 60 , 60 , 180 , 160 , 0 ,0
db 0 ,0 , 0 , 240 , 60 , 240 , 160 , 0 ,0
db 0 ,0 , 0 , 180 , 180 , 120 , 0 , 0  ,0
db 0 ,0 , 0 , 80 , 240 , 240 , 0 , 0   ,0
db 0 ,0 , 0 , 0 , 0 , 0 , 0 , 0        ,0
db 0 ,0 , 0 , 0 , 0 , 0 , 0 , 0        ,0
;------ END IMAGE --------

;------ BEGIN IMAGE --------
PLANET_2
db 11 ; ancho
db 28 ; alto
db 0 ,0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0               ,0 
db 0 ,0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0               ,0 
db 0 ,0 , 0 , 0 , 60 , 60 , 40 , 0 , 0 , 0            ,0 
db 0 ,0 , 0 , 20 , 40 , 20 , 60 , 0 , 0 , 0           ,0 
db 0 ,0 , 0 , 60 , 20 , 60 , 120 , 160 , 0 , 0        ,0 
db 0 ,0 , 0 , 20 , 60 , 60 , 240 , 240 , 0 , 0        ,0 
db 0 ,0 , 20 , 40 , 60 , 60 , 240 , 240 , 0 , 0       ,0 
db 0 ,0 , 20 , 60 , 60 , 60 , 240 , 240 , 160 , 0     ,0 
db 0 ,0 , 0 , 60 , 60 , 120 , 60 , 240 , 160 , 0      ,0 
db 0 ,0 , 60 , 60 , 20 , 120 , 60 , 120 , 160 , 0     ,0 
db 0 ,0 , 40 , 60 , 60 , 120 , 60 , 120 , 240 , 0     ,0 
db 0 ,0 , 20 , 20 , 60 , 120 , 60 , 120 , 240 , 0     ,0 
db 0 ,0 , 60 , 60 , 60 , 120 , 60 , 120 , 120 , 0     ,0 
db 0 ,0 , 60 , 60 , 60 , 60 , 180 , 240 , 120 , 0     ,0 
db 0 ,0 , 20 , 60 , 20 , 60 , 60 , 180 , 240 , 0      ,0 
db 0 ,0 , 160 , 20 , 60 , 60 , 60 , 60 , 240 , 0      ,0 
db 0 ,0 , 180 , 60 , 40 , 60 , 60 , 60 , 240 , 0      ,0 
db 0 ,0 , 180 , 0 , 60 , 60 , 60 , 60 , 240 , 0       ,0 
db 0 ,0 , 80 , 180 , 60 , 60 , 60 , 120 , 240 , 0     ,0 
db 0 ,0 , 160 , 0 , 60 , 60 , 120 , 240 , 160 , 0     ,0 
db 0 ,0 , 80 , 60 , 20 , 60 , 60 , 240 , 160 , 0      ,0 
db 0 ,0 , 80 , 20 , 60 , 60 , 60 , 120 , 160 , 0      ,0 
db 0 ,0 , 0 , 240 , 240 , 60 , 60 , 240 , 0 , 0       ,0 
db 0 ,0 , 0 , 160 , 160 , 180 , 60 , 240 , 0 , 0      ,0 
db 0 ,0 , 0 , 80 , 80 , 240 , 240 , 160 , 0 , 0       ,0 
db 0 ,0 , 0 , 0 , 240 , 240 , 240 , 0 , 0 , 0         ,0 
db 0 ,0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0               ,0 
db 0 ,0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0               ,0 

;------ END IMAGE --------

STAR
;------ BEGIN IMAGE --------
db 3 ; ancho
db 5 ; alto
db 0 , 0 , 0 
db 0 , 0 , 0 
db 0 , 128 , 0 
db 0 , 0 , 0 
db 0 , 0 , 0 
;------ END IMAGE --------

PIEDRA
;------ BEGIN IMAGE --------
db 5 ; ancho
db 6 ; alto
db 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 
db 0 , 18 , 48 , 33 , 0 
db 0 , 33 , 3 , 18 , 0 

;------ END IMAGE --------
LUZ
;------ BEGIN IMAGE --------
db 6 ; ancho
db 17 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 16 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 16 , 0 , 0 , 0 
db 0 , 0 , 16 , 0 , 0 , 0 
db 0 , 0 , 16 , 0 , 0 , 0 
db 0 , 0 , 16 , 0 , 0 , 0 
db 0 , 0 , 49 , 32 , 0 , 0 
db 32 , 48 , 35 , 50 , 32 , 32 
db 0 , 0 , 49 , 32 , 0 , 0 
db 0 , 0 , 16 , 0 , 0 , 0 
db 0 , 0 , 16 , 0 , 0 , 0 
db 0 , 0 , 16 , 0 , 0 , 0 
db 0 , 0 , 16 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 16 , 0 , 0 , 0 
;------ END IMAGE --------
trozo
;------ BEGIN IMAGE --------
db 5 ; ancho
db 11 ; alto
db 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 60 , 0 , 0 
db 0 , 0 , 60 , 0 , 0 
db 0 , 0 , 60 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------
ultima
;------ BEGIN IMAGE --------
db 16 ; ancho
db 10 ; alto
db 192 , 192 , 192 , 192 , 64 , 128 , 128 , 192 , 192 , 192 , 192 , 192 , 192 , 0 , 128 , 0 
db 192 , 192 , 192 , 192 , 64 , 192 , 0 , 128 , 0 , 192 , 192 , 192 , 192 , 0 , 128 , 64 
db 192 , 128 , 64 , 192 , 64 , 128 , 128 , 128 , 0 , 192 , 0 , 0 , 192 , 0 , 128 , 128 
db 192 , 128 , 64 , 192 , 0 , 64 , 0 , 128 , 0 , 128 , 0 , 0 , 0 , 0 , 128 , 64 
db 192 , 128 , 192 , 192 , 0 , 128 , 128 , 0 , 0 , 0 , 128 , 128 , 0 , 0 , 0 , 128 
db 192 , 192 , 0 , 64 , 64 , 64 , 0 , 0 , 64 , 0 , 64 , 0 , 0 , 0 , 0 , 64 
db 192 , 0 , 128 , 0 , 0 , 128 , 128 , 0 , 128 , 0 , 128 , 128 , 0 , 0 , 64 , 128 
db 192 , 64 , 0 , 0 , 64 , 64 , 64 , 0 , 64 , 0 , 64 , 64 , 64 , 64 , 0 , 64 
db 128 , 128 , 128 , 128 , 128 , 128 , 128 , 128 , 128 , 192 , 0 , 128 , 128 , 128 , 192 , 128 
db 192 , 64 , 64 , 64 , 64 , 64 , 64 , 64 , 64 , 64 , 64 , 64 , 64 , 64 , 0 , 64 
;------ END IMAGE --------
;------ BEGIN IMAGE --------
HAWK_0A
db 7 ; ancho
db 12 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 ,0
db 0 , 0 , 0 , 0 , 0 , 0 ,0
db 0 , 0 , 0 , 0 , 0 , 0 ,0
db 0 , 0 , 0 , 0 , 0 , 0 ,0
db 0 , 65 , 195 , 65 , 195 , 0 ,0
db 0 , 195 , 195 , 195 , 195 , 130 ,0
db 0 , 195 , 16 , 146 , 65 , 130 ,0
db 0 , 2 , 65 , 195 , 1 , 130 ,0
db 0 , 0 , 65 , 195 , 0 , 0 ,0
db 0 , 0 , 0 , 130 , 0 , 0 ,0
db 0 , 0 , 0 , 0 , 0 , 0 ,0
db 0 , 0 , 0 , 0 , 0 , 0 ,0

;------ END IMAGE --------
;------ BEGIN IMAGE --------
HAWK_0B
db 7 ; ancho
db 12 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 ,0
db 0 , 130 , 0 , 0 , 0 , 130 ,0
db 0 , 195 , 0 , 0 , 65 , 130 ,0
db 0 , 67 , 130 , 0 , 195 , 2 ,0
db 0 , 1 , 195 , 65 , 131 , 0 ,0
db 0 , 0 , 195 , 195 , 2 , 0 ,0
db 0 , 0 , 18 , 18 , 0 , 0 ,0
db 0 , 0 , 65 , 67 , 0 , 0 ,0
db 0 , 0 , 65 , 67 , 0 , 0 ,0
db 0 , 0 , 0 , 130 , 0 , 0 ,0
db 0 , 0 , 0 , 0 , 0 , 0 ,0
db 0 , 0 , 0 , 0 , 0 , 0 ,0
;------ END IMAGE --------
;------ BEGIN IMAGE --------
;------ BEGIN IMAGE --------
HAWK_1A
db 8 ; ancho
db 14 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 195 , 0 , 0 , 0 , 0 , 195 , 0 
db 0 , 65 , 130 , 0 , 0 , 65 , 130 , 0 
db 0 , 65 , 195 , 0 , 0 , 195 , 130 , 0 
db 0 , 0 , 67 , 65 , 130 , 131 , 0 , 0 
db 0 , 0 , 65 , 97 , 146 , 130 , 0 , 0 
db 0 , 0 , 65 , 195 , 195 , 130 , 0 , 0 
db 0 , 0 , 0 , 195 , 195 , 0 , 0 , 0 
db 0 , 0 , 65 , 65 , 130 , 130 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------

;------ BEGIN IMAGE --------
HAWK_1B
db 8 ; ancho
db 14 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 65 , 130 , 0 , 0 , 0 
db 0 , 0 , 195 , 97 , 146 , 195 , 0 , 0 
db 0 , 65 , 195 , 195 , 195 , 195 , 130 , 0 
db 0 , 65 , 0 , 195 , 195 , 0 , 130 , 0 
db 0 , 130 , 65 , 65 , 130 , 130 , 65 , 0 
db 0 , 130 , 0 , 0 , 0 , 0 , 65 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------
;------ BEGIN IMAGE --------
HAWK_2A
;------ BEGIN IMAGE --------
db 10 ; ancho
db 15 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 65 , 195 , 0 , 0 , 0 , 0 , 195 , 130 , 0 
db 0 , 195 , 195 , 195 , 0 , 0 , 195 , 195 , 195 , 0 
db 0 , 195 , 195 , 195 , 195 , 195 , 195 , 195 , 195 , 0 
db 0 , 195 , 0 , 195 , 195 , 195 , 195 , 0 , 195 , 0 
db 0 , 130 , 0 , 65 , 97 , 146 , 130 , 0 , 65 , 0 
db 0 , 0 , 0 , 130 , 195 , 195 , 65 , 0 , 0 , 0 
db 0 , 0 , 0 , 130 , 65 , 130 , 65 , 0 , 0 , 0 
db 0 , 0 , 65 , 130 , 65 , 130 , 65 , 130 , 0 , 0 
db 0 , 0 , 0 , 130 , 0 , 0 , 65 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------
;------ BEGIN IMAGE --------
HAWK_2B
db 10 ; ancho
db 16 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 130 , 0 , 0 , 0 , 0 , 0 , 0 , 65 , 0 
db 0 , 195 , 0 , 0 , 0 , 0 , 0 , 0 , 195 , 0 
db 0 , 195 , 130 , 0 , 0 , 0 , 0 , 65 , 195 , 0 
db 0 , 65 , 195 , 0 , 0 , 0 , 0 , 195 , 130 , 0 
db 0 , 0 , 195 , 195 , 65 , 130 , 195 , 195 , 0 , 0 
db 0 , 0 , 195 , 195 , 195 , 195 , 195 , 195 , 0 , 0 
db 0 , 0 , 65 , 195 , 195 , 195 , 195 , 130 , 0 , 0 
db 0 , 0 , 0 , 65 , 97 , 146 , 130 , 0 , 0 , 0 
db 0 , 0 , 0 , 130 , 195 , 195 , 65 , 0 , 0 , 0 
db 0 , 0 , 0 , 130 , 65 , 130 , 65 , 0 , 0 , 0 
db 0 , 0 , 65 , 130 , 65 , 130 , 65 , 130 , 0 , 0 
db 0 , 0 , 0 , 130 , 0 , 0 , 65 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------

;------ BEGIN IMAGE --------
JOE_RIGHT
db 6 ; ancho
db 39 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 1 , 2 , 0 , 0 
db 0 , 0 , 18 , 33 , 0 , 0 
db 0 , 1 , 49 , 48 , 2 , 0 
db 0 , 1 , 50 , 48 , 2 , 0 
db 0 , 1 , 49 , 33 , 2 , 0 
db 0 , 1 , 35 , 33 , 0 , 0 
db 0 , 1 , 3 , 18 , 0 , 0 
db 0 , 1 , 48 , 3 , 0 , 0 
db 0 , 18 , 50 , 33 , 0 , 0 
db 0 , 19 , 48 , 33 , 3 , 0 
db 0 , 18 , 50 , 33 , 3 , 0 
db 0 , 19 , 33 , 33 , 3 , 0 
db 0 , 18 , 33 , 48 , 2 , 0 
db 0 , 1 , 33 , 48 , 2 , 0 
db 0 , 19 , 50 , 19 , 0 , 0 
db 0 , 19 , 51 , 33 , 2 , 0 
db 0 , 1 , 51 , 51 , 2 , 0 
db 0 , 1 , 51 , 50 , 2 , 0 
db 0 , 0 , 3 , 50 , 2 , 0 
db 0 , 0 , 1 , 51 , 32 , 0 
db 0 , 0 , 19 , 51 , 32 , 0 
db 0 , 0 , 19 , 49 , 32 , 0 
db 0 , 0 , 3 , 51 , 2 , 0 
db 0 , 1 , 18 , 51 , 2 , 0 
db 0 , 1 , 3 , 3 , 2 , 0 
db 0 , 1 , 3 , 3 , 0 , 0 
db 0 , 1 , 3 , 2 , 0 , 0 
db 0 , 0 , 3 , 2 , 0 , 0 
db 0 , 0 , 3 , 3 , 0 , 0 
db 0 , 0 , 3 , 3 , 0 , 0 
db 0 , 0 , 1 , 3 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------
          

;------ BEGIN IMAGE --------
JOE_LEFT
db 6 ; ancho
db 39 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 1 , 2 , 0 , 0 
db 0 , 0 , 18 , 33 , 0 , 0 
db 0 , 1 , 48 , 50 , 2 , 0 
db 0 , 1 , 48 , 49 , 2 , 0 
db 0 , 1 , 18 , 50 , 2 , 0 
db 0 , 0 , 18 , 19 , 2 , 0 
db 0 , 0 , 33 , 3 , 2 , 0 
db 0 , 0 , 3 , 48 , 2 , 0 
db 0 , 0 , 18 , 49 , 33 , 0 
db 0 , 3 , 18 , 48 , 35 , 0 
db 0 , 3 , 18 , 49 , 33 , 0 
db 0 , 3 , 18 , 18 , 35 , 0 
db 0 , 1 , 48 , 18 , 33 , 0 
db 0 , 1 , 48 , 18 , 2 , 0 
db 0 , 0 , 35 , 49 , 35 , 0 
db 0 , 1 , 18 , 51 , 35 , 0 
db 0 , 1 , 51 , 51 , 2 , 0 
db 0 , 1 , 49 , 51 , 2 , 0 
db 0 , 1 , 49 , 3 , 0 , 0 
db 0 , 16 , 51 , 2 , 0 , 0 
db 0 , 16 , 51 , 35 , 0 , 0 
db 0 , 16 , 50 , 35 , 0 , 0 
db 0 , 1 , 51 , 3 , 0 , 0 
db 0 , 1 , 51 , 33 , 2 , 0 
db 0 , 1 , 3 , 3 , 2 , 0 
db 0 , 0 , 3 , 3 , 2 , 0 
db 0 , 0 , 1 , 3 , 2 , 0 
db 0 , 0 , 1 , 3 , 0 , 0 
db 0 , 0 , 3 , 3 , 0 , 0 
db 0 , 0 , 3 , 3 , 0 , 0 
db 0 , 0 , 3 , 2 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------

;------ BEGIN IMAGE --------
JOE_DEAD
db 6 ; ancho
db 42 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 34 , 0 , 0 , 0 , 0 
db 17 , 34 , 0 , 0 , 0 , 0 
db 17 , 2 , 0 , 0 , 0 , 0 
db 16 , 3 , 1 , 2 , 0 , 0 
db 17 , 48 , 19 , 35 , 0 , 0 
db 1 , 33 , 51 , 49 , 2 , 1 
db 1 , 35 , 50 , 48 , 2 , 17 
db 0 , 3 , 50 , 48 , 2 , 17 
db 0 , 3 , 50 , 33 , 2 , 18 
db 0 , 1 , 3 , 33 , 33 , 50 
db 0 , 1 , 3 , 18 , 48 , 48 
db 0 , 0 , 19 , 48 , 48 , 33 
db 0 , 0 , 3 , 50 , 48 , 3 
db 0 , 0 , 3 , 50 , 33 , 2 
db 0 , 0 , 3 , 3 , 3 , 0 
db 0 , 0 , 19 , 3 , 51 , 2 
db 0 , 0 , 19 , 51 , 51 , 34 
db 0 , 0 , 17 , 51 , 51 , 34 
db 0 , 1 , 1 , 51 , 51 , 2 
db 0 , 1 , 51 , 19 , 19 , 2 
db 0 , 3 , 51 , 1 , 51 , 2 
db 0 , 3 , 2 , 0 , 19 , 0 
db 0 , 3 , 2 , 1 , 3 , 0 
db 0 , 3 , 0 , 1 , 2 , 0 
db 0 , 3 , 0 , 1 , 2 , 0 
db 0 , 3 , 0 , 1 , 2 , 0 
db 0 , 0 , 0 , 1 , 2 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------
BORRA; para borrar la nave y tambien la explosion. forma parte de la secuencia de explosion
db 16
db 30
defs 480
;------ BEGIN IMAGE --------
;------ BEGIN IMAGE --------
EXPLO1
db 11 ; ancho
db 28 ; alto
db 0 , 0 , 0 , 3 , 18 , 48 , 33 , 3 , 0 , 0 , 0 
db 0 , 0 , 1 , 18 , 48 , 48 , 48 , 33 , 2 , 0 , 0 
db 0 , 0 , 1 , 48 , 48 , 48 , 48 , 48 , 2 , 0 , 0 
db 0 , 0 , 18 , 48 , 33 , 3 , 18 , 48 , 33 , 0 , 0 
db 0 , 0 , 18 , 48 , 2 , 0 , 1 , 48 , 33 , 0 , 0 
db 0 , 0 , 18 , 33 , 0 , 0 , 0 , 18 , 33 , 0 , 0 
db 0 , 1 , 48 , 33 , 0 , 0 , 0 , 18 , 48 , 2 , 0 
db 0 , 1 , 48 , 2 , 0 , 0 , 0 , 1 , 48 , 2 , 0 
db 0 , 1 , 48 , 2 , 0 , 0 , 0 , 1 , 48 , 2 , 0 
db 0 , 16 , 48 , 2 , 0 , 0 , 0 , 1 , 48 , 32 , 0 
db 0 , 16 , 48 , 2 , 0 , 0 , 0 , 1 , 48 , 32 , 0 
db 0 , 16 , 33 , 0 , 0 , 3 , 0 , 0 , 18 , 32 , 0 
db 0 , 16 , 33 , 0 , 1 , 3 , 2 , 0 , 18 , 32 , 0 
db 0 , 16 , 33 , 0 , 1 , 48 , 2 , 0 , 18 , 32 , 0 
db 0 , 16 , 33 , 0 , 1 , 48 , 2 , 0 , 18 , 32 , 0 
db 0 , 16 , 33 , 0 , 1 , 3 , 2 , 0 , 18 , 32 , 0 
db 0 , 16 , 33 , 0 , 0 , 3 , 0 , 0 , 18 , 32 , 0 
db 0 , 16 , 48 , 2 , 0 , 0 , 0 , 1 , 48 , 32 , 0 
db 0 , 16 , 48 , 2 , 0 , 0 , 0 , 1 , 48 , 32 , 0 
db 0 , 1 , 48 , 2 , 0 , 0 , 0 , 1 , 48 , 2 , 0 
db 0 , 1 , 48 , 2 , 0 , 0 , 0 , 1 , 48 , 2 , 0 
db 0 , 1 , 48 , 33 , 0 , 0 , 0 , 18 , 48 , 2 , 0 
db 0 , 0 , 18 , 33 , 0 , 0 , 0 , 18 , 33 , 0 , 0 
db 0 , 0 , 18 , 48 , 2 , 0 , 1 , 48 , 33 , 0 , 0 
db 0 , 0 , 18 , 48 , 33 , 3 , 18 , 48 , 33 , 0 , 0 
db 0 , 0 , 1 , 48 , 48 , 48 , 48 , 48 , 2 , 0 , 0 
db 0 , 0 , 1 , 18 , 48 , 48 , 48 , 33 , 2 , 0 , 0 
db 0 , 0 , 0 , 3 , 18 , 48 , 33 , 3 , 0 , 0 , 0 
;------ END IMAGE --------
;------ BEGIN IMAGE --------
EXPLO2
db 11 ; ancho
db 28 ; alto
db 0 , 0 , 0 , 2 , 0 , 48 , 0 , 1 , 0 , 0 , 0 
db 0 , 0 , 1 , 18 , 0 , 48 , 0 , 33 , 2 , 0 , 0 
db 0 , 0 , 1 , 48 , 0 , 48 , 0 , 48 , 2 , 0 , 0 
db 0 , 0 , 0 , 16 , 0 , 0 , 0 , 32 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 2 , 0 , 0 , 0 , 0 , 0 , 1 , 0 , 0 
db 0 , 1 , 32 , 0 , 0 , 0 , 0 , 0 , 16 , 2 , 0 
db 0 , 1 , 48 , 0 , 0 , 0 , 0 , 0 , 48 , 2 , 0 
db 0 , 0 , 16 , 0 , 0 , 0 , 0 , 0 , 32 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 3 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 1 , 48 , 2 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 18 , 48 , 33 , 0 , 0 , 0 , 0 
db 0 , 16 , 0 , 1 , 48 , 48 , 48 , 2 , 0 , 32 , 0 
db 0 , 16 , 33 , 1 , 48 , 48 , 48 , 2 , 18 , 32 , 0 
db 0 , 16 , 33 , 1 , 48 , 48 , 48 , 2 , 18 , 32 , 0 
db 0 , 16 , 0 , 1 , 48 , 48 , 48 , 2 , 0 , 32 , 0 
db 0 , 0 , 0 , 0 , 18 , 48 , 33 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 1 , 48 , 2 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 3 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 16 , 0 , 0 , 0 , 0 , 0 , 32 , 0 , 0 
db 0 , 1 , 48 , 0 , 0 , 0 , 0 , 0 , 48 , 2 , 0 
db 0 , 1 , 32 , 0 , 0 , 0 , 0 , 0 , 16 , 2 , 0 
db 0 , 0 , 2 , 0 , 0 , 0 , 0 , 0 , 1 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 16 , 0 , 0 , 0 , 32 , 0 , 0 , 0 
db 0 , 0 , 1 , 48 , 0 , 48 , 0 , 48 , 2 , 0 , 0 
db 0 , 0 , 1 , 18 , 0 , 48 , 0 , 33 , 2 , 0 , 0 
db 0 , 0 , 0 , 2 , 0 , 48 , 0 , 1 , 0 , 0 , 0 
;------ END IMAGE --------
;------ BEGIN IMAGE --------
EXPLO3
db 11 ; ancho
db 28 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 3 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 1 , 48 , 2 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 18 , 48 , 33 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 1 , 48 , 48 , 48 , 2 , 0 , 0 , 0 
db 0 , 0 , 0 , 1 , 48 , 3 , 48 , 2 , 0 , 0 , 0 
db 0 , 0 , 0 , 18 , 33 , 0 , 18 , 33 , 0 , 0 , 0 
db 0 , 0 , 0 , 18 , 32 , 0 , 16 , 33 , 0 , 0 , 0 
db 0 , 0 , 0 , 18 , 32 , 0 , 16 , 33 , 0 , 0 , 0 
db 0 , 0 , 0 , 18 , 33 , 0 , 18 , 33 , 0 , 0 , 0 
db 0 , 0 , 0 , 3 , 48 , 3 , 48 , 2 , 0 , 0 , 0 
db 0 , 0 , 0 , 1 , 48 , 48 , 48 , 2 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 16 , 48 , 33 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 48 , 2 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 3 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------


NAVE_3

db 16 ; ancho
db 30 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 3 , 3 , 3 , 3 , 3 , 3 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 3 , 48 , 48 , 48 , 48 , 48 , 48 , 3 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 3 , 50 , 48 , 33 , 3 , 3 , 18 , 48 , 49 , 3 , 0 , 0 , 0 
db 0 , 0 , 1 , 19 , 48 , 33 , 3 , 51 , 51 , 3 , 18 , 48 , 35 , 2 , 0 , 0 
db 0 , 0 , 1 , 50 , 50 , 3 , 51 , 35 , 3 , 3 , 3 , 49 , 49 , 2 , 0 , 0 
db 0 , 0 , 1 , 49 , 48 , 3 , 35 , 3 , 3 , 3 , 3 , 48 , 50 , 2 , 0 , 0 
db 0 , 0 , 1 , 50 , 50 , 3 , 3 , 3 , 3 , 3 , 3 , 49 , 49 , 2 , 0 , 0 
db 0 , 0 , 1 , 51 , 49 , 3 , 3 , 3 , 3 , 3 , 3 , 50 , 51 , 2 , 0 , 0 
db 0 , 0 , 1 , 50 , 50 , 35 , 3 , 3 , 3 , 3 , 19 , 49 , 49 , 2 , 0 , 0 
db 0 , 0 , 1 , 51 , 49 , 49 , 3 , 3 , 3 , 3 , 50 , 50 , 51 , 2 , 0 , 0 
db 0 , 0 , 0 , 19 , 18 , 50 , 35 , 3 , 3 , 19 , 49 , 33 , 35 , 0 , 0 , 0 
db 0 , 0 , 0 , 2 , 3 , 48 , 49 , 3 , 3 , 50 , 48 , 3 , 1 , 0 , 0 , 0 
db 0 , 0 , 0 , 3 , 33 , 48 , 48 , 35 , 19 , 48 , 48 , 18 , 3 , 0 , 0 , 0 
db 0 , 0 , 0 , 19 , 48 , 48 , 48 , 49 , 50 , 48 , 48 , 48 , 35 , 0 , 0 , 0 
db 0 , 0 , 0 , 19 , 48 , 48 , 48 , 48 , 48 , 48 , 48 , 48 , 35 , 0 , 0 , 0 
db 0 , 0 , 1 , 50 , 48 , 18 , 48 , 48 , 48 , 48 , 33 , 48 , 49 , 2 , 0 , 0 
db 0 , 0 , 1 , 50 , 48 , 3 , 50 , 48 , 48 , 49 , 3 , 48 , 49 , 2 , 0 , 0 
db 0 , 0 , 1 , 50 , 49 , 35 , 16 , 48 , 48 , 32 , 19 , 50 , 49 , 2 , 0 , 0 
db 0 , 0 , 1 , 50 , 35 , 2 , 3 , 48 , 48 , 3 , 1 , 19 , 49 , 2 , 0 , 0 
db 0 , 0 , 1 , 49 , 2 , 0 , 1 , 16 , 32 , 2 , 0 , 1 , 50 , 2 , 0 , 0 
db 0 , 0 , 1 , 35 , 0 , 0 , 0 , 3 , 3 , 0 , 0 , 0 , 19 , 2 , 0 , 0 
db 0 , 0 , 1 , 2 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 1 , 2 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------
;------ END IMAGE --------

;------ BEGIN IMAGE --------
NAVE_2
db 12 ; ancho
db 21 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 1 , 3 , 3 , 3 , 3 , 2 , 0 , 0 , 0 
db 0 , 0 , 0 , 19 , 48 , 48 , 48 , 48 , 35 , 0 , 0 , 0 
db 0 , 0 , 1 , 50 , 48 , 3 , 3 , 48 , 49 , 2 , 0 , 0 
db 0 , 0 , 19 , 48 , 33 , 19 , 35 , 18 , 48 , 35 , 0 , 0 
db 0 , 0 , 19 , 48 , 3 , 35 , 19 , 3 , 48 , 35 , 0 , 0 
db 0 , 0 , 3 , 48 , 3 , 3 , 3 , 3 , 48 , 3 , 0 , 0 
db 0 , 0 , 3 , 19 , 3 , 3 , 3 , 3 , 35 , 3 , 0 , 0 
db 0 , 0 , 1 , 18 , 35 , 3 , 3 , 19 , 33 , 2 , 0 , 0 
db 0 , 0 , 3 , 51 , 49 , 3 , 3 , 50 , 51 , 3 , 0 , 0 
db 0 , 0 , 18 , 33 , 48 , 35 , 19 , 48 , 18 , 33 , 0 , 0 
db 0 , 0 , 18 , 49 , 48 , 49 , 50 , 48 , 50 , 33 , 0 , 0 
db 0 , 0 , 18 , 33 , 16 , 48 , 48 , 32 , 18 , 33 , 0 , 0 
db 0 , 0 , 18 , 2 , 2 , 48 , 48 , 1 , 1 , 33 , 0 , 0 
db 0 , 0 , 3 , 0 , 1 , 18 , 33 , 2 , 0 , 3 , 0 , 0 
db 0 , 0 , 2 , 0 , 0 , 0 , 0 , 0 , 0 , 1 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------
;------ BEGIN IMAGE --------
NAVE_1
db 8 ; ancho
db 16 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 3 , 3 , 3 , 3 , 0 , 0 
db 0 , 1 , 50 , 48 , 48 , 49 , 2 , 0 
db 0 , 17 , 48 , 3 , 3 , 48 , 34 , 0 
db 0 , 18 , 33 , 19 , 35 , 18 , 33 , 0 
db 0 , 18 , 33 , 3 , 3 , 18 , 33 , 0 
db 0 , 19 , 50 , 3 , 3 , 49 , 35 , 0 
db 0 , 1 , 48 , 33 , 18 , 48 , 2 , 0 
db 0 , 1 , 35 , 48 , 48 , 19 , 2 , 0 
db 0 , 18 , 48 , 18 , 33 , 48 , 33 , 0 
db 0 , 18 , 33 , 1 , 2 , 18 , 33 , 0 
db 0 , 18 , 2 , 0 , 0 , 1 , 33 , 0 
db 0 , 3 , 0 , 0 , 0 , 0 , 3 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------
;------ BEGIN IMAGE --------
NAVE_0
db 5 ; ancho
db 10 ; alto
db 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 
db 0 , 19 , 50 , 33 , 0 
db 0 , 114 , 161 , 18 , 0 
db 0 , 114 , 3 , 18 , 0 
db 0 , 51 , 3 , 48 , 0 
db 0 , 19 , 50 , 33 , 0 
db 0 , 1 , 50 , 2 , 0 
db 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------
FIRE1_del; se usa en secuencia 7
db 7 ; ancho
db 12 ; alto
db 0,0,0 , 0 , 0 , 0 , 0 
db 0,0,0 , 0 , 0 , 0 , 0 
db 0,0 , 0 , 0 , 0 , 0 ,0
db 0,0 , 0 , 0 , 0 , 0 ,0
db 0,0,0 , 0 , 0 , 0 , 0 
db 0,0,0 , 0 , 0 , 0 , 0 
db 0,0 , 0 , 0 , 0 , 0 ,0
db 0,0 , 0 , 0 , 0 , 0 ,0
db 0,0,0 , 0 , 0 , 0 , 0 
db 0,0,0 , 0 , 0 , 0 , 0 
db 0,0 , 0 , 0 , 0 , 0 ,0
db 0,0 , 0 , 0 , 0 , 0 ,0

;------ BEGIN IMAGE --------
DISPARO
FRAGMENT
db 8 ; ancho
db 12 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 19 , 35 , 0 , 0 , 0 
db 0 , 0 , 0 , 50 , 49 , 0 , 0 , 0 
db 0 , 0 , 0 , 50 , 49 , 0 , 0 , 0 
db 0 , 0 , 0 , 19 , 35 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------


FIRE1
db 7 ; ancho
db 12 ; alto
db 0,0,0 , 0 , 0 , 0 , 0 
db 0,0,0 , 0 , 0 , 0 , 0 
db 0,0 , 0 , 48 , 0 , 0 ,0
db 0,0 , 16 , 48 , 32 , 0 ,0
db 0,0 , 48 , 48 , 48 , 0 ,0
db 0,0 , 48 , 48 , 48 , 0 ,0
db 0,0 , 48 , 48 , 48 , 0 ,0
db 0,0 , 48 , 48 , 48 , 0 ,0
db 0,0 , 16 , 48 , 32 , 0 ,0
db 0,0 , 0 , 48 , 0 , 0 ,0
db 0,0 , 0 , 0 , 0 , 0 ,0
db 0,0 , 0 , 0 , 0 , 0 ,0
;------ END IMAGE --------
FIRE2
;------ BEGIN IMAGE --------
db 4 ; ancho
db 8 ; alto
db  0 , 0 , 0 ,0
db  0 , 0 , 0 ,0
db 0 , 16 , 32 , 0
db 0 , 48 , 48 , 0
db 0 , 48 , 48 , 0
db 0 , 48 , 48 , 0
db 0 , 16 , 32 , 0
db 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 
;------ END IMAGE --------
FIRE3
db 3 ; ancho
db 6 ; alto
db 0 , 0 , 0 
db 0 , 0 , 0 
db 0 , 48 ,0
db 0 , 48 ,0
db 0 , 0 , 0 
db 0 , 0 , 0  
FIRE4
db 3 ; ancho
db 6 ; alto
db 0 , 0 , 0 
db 0 , 0 , 0 
db 0 , 0 ,0
db 0 , 0 ,0
db 0 , 0 , 0 
db 0 , 0 , 0  



;------ BEGIN IMAGE --------
MONEDA
db 8 ; ancho
db 24 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 1 , 15 , 15 , 8 , 0 , 0 
db 0 , 0 , 7 , 5 , 5 , 6 , 0 , 0 
db 0 , 0 , 10 , 10 , 10 , 11 , 0 , 0 
db 0 , 1 , 5 , 5 , 5 , 5 , 8 , 0 
db 0 , 2 , 0 , 0 , 0 , 0 , 4 , 0 
db 0 , 2 , 15 , 7 , 13 , 15 , 4 , 0 
db 0 , 5 , 15 , 11 , 2 , 12 , 10 , 0 
db 0 , 5 , 9 , 11 , 2 , 12 , 10 , 0 
db 0 , 5 , 9 , 11 , 2 , 12 , 10 , 0 
db 0 , 4 , 15 , 3 , 12 , 15 , 2 , 0 
db 0 , 5 , 9 , 11 , 2 , 12 , 6 , 0 
db 0 , 5 , 9 , 11 , 2 , 12 , 10 , 0 
db 0 , 5 , 15 , 11 , 2 , 12 , 6 , 0 
db 0 , 4 , 15 , 7 , 13 , 14 , 10 , 0 
db 0 , 2 , 0 , 0 , 0 , 1 , 4 , 0 
db 0 , 2 , 10 , 10 , 10 , 10 , 12 , 0 
db 0 , 1 , 5 , 5 , 5 , 5 , 8 , 0 
db 0 , 0 , 10 , 10 , 10 , 11 , 0 , 0 
db 0 , 0 , 7 , 5 , 5 , 6 , 0 , 0 
db 0 , 0 , 1 , 15 , 15 , 8 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------


;------ BEGIN IMAGE --------
JEFE_1
db 6 ; ancho
db 10 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 18 , 33 , 0 , 0 
db 0 , 1 , 33 , 18 , 2 , 0 
db 0 , 48 , 3 , 3 , 48 , 0 
db 0 , 52 , 60 , 60 , 56 , 0 
db 0 , 18 , 52 , 56 , 32 , 0 
db 0 , 1 , 18 , 32 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------
;------ BEGIN IMAGE --------
JEFE_2
db 10 ; ancho
db 16 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 48 , 48 , 0 , 0 , 0 , 0 
db 0 , 0 , 3 , 18 , 3 , 3 , 33 , 3 , 0 , 0 
db 0 , 1 , 48 , 33 , 3 , 3 , 18 , 48 , 2 , 0 
db 0 , 18 , 56 , 3 , 3 , 3 , 3 , 52 , 33 , 0 
db 0 , 52 , 60 , 48 , 3 , 3 , 48 , 60 , 56 , 0 
db 0 , 52 , 60 , 60 , 48 , 48 , 60 , 60 , 56 , 0 
db 0 , 52 , 22 , 60 , 60 , 60 , 60 , 41 , 56 , 0 
db 0 , 18 , 60 , 41 , 60 , 60 , 22 , 60 , 33 , 0 
db 0 , 1 , 52 , 60 , 60 , 60 , 60 , 56 , 2 , 0 
db 0 , 0 , 18 , 48 , 48 , 48 , 48 , 33 , 0 , 0 
db 0 , 0 , 1 , 3 , 3 , 3 , 3 , 2 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------
;------ BEGIN IMAGE --------
JEFE_3
db 16 ; ancho
db 21 ; alto
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 18 , 48 , 48 , 33 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 3 , 3 , 33 , 3 , 3 , 18 , 3 , 3 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 3 , 48 , 48 , 3 , 3 , 3 , 3 , 48 , 48 , 3 , 0 , 0 , 0 
db 0 , 0 , 1 , 48 , 60 , 56 , 3 , 3 , 3 , 3 , 52 , 60 , 48 , 2 , 0 , 0 
db 0 , 0 , 18 , 60 , 60 , 60 , 33 , 3 , 3 , 18 , 60 , 60 , 60 , 33 , 0 , 0 
db 0 , 0 , 52 , 60 , 60 , 60 , 56 , 33 , 18 , 52 , 60 , 60 , 60 , 56 , 0 , 0 
db 0 , 0 , 52 , 60 , 22 , 60 , 60 , 56 , 52 , 60 , 60 , 41 , 60 , 56 , 0 , 0 
db 0 , 0 , 18 , 60 , 22 , 41 , 60 , 60 , 60 , 60 , 22 , 41 , 60 , 33 , 0 , 0 
db 0 , 0 , 1 , 52 , 60 , 41 , 60 , 22 , 41 , 60 , 22 , 60 , 56 , 2 , 0 , 0 
db 0 , 0 , 0 , 18 , 48 , 60 , 60 , 22 , 41 , 60 , 60 , 48 , 33 , 0 , 0 , 0 
db 0 , 0 , 0 , 1 , 3 , 48 , 48 , 60 , 60 , 48 , 48 , 3 , 2 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 3 , 3 , 48 , 48 , 3 , 3 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 3 , 3 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 
;------ END IMAGE --------



;------ BEGIN IMAGE --------
BODY_DRAGON_2
;------ BEGIN IMAGE --------
db 6 ; ancho
db 21 ; alto
db 192 , 0 , 0 , 0 , 0 , 192 
db 128 , 0 , 0 , 0 , 0 , 64 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 3 , 3 , 0 , 0 
db 0 , 1 , 60 , 60 , 2 , 0 
db 0 , 1 , 60 , 41 , 2 , 0 
db 0 , 22 , 60 , 22 , 3 , 0 
db 0 , 22 , 60 , 41 , 41 , 0 
db 0 , 22 , 60 , 22 , 3 , 0 
db 0 , 22 , 60 , 41 , 41 , 0 
db 0 , 22 , 60 , 22 , 3 , 0 
db 0 , 22 , 41 , 41 , 41 , 0 
db 0 , 22 , 60 , 22 , 3 , 0 
db 0 , 1 , 41 , 41 , 2 , 0 
db 0 , 1 , 22 , 22 , 2 , 0 
db 0 , 0 , 3 , 3 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 128 , 0 , 0 , 0 , 0 , 64 
db 192 , 0 , 0 , 0 , 0 , 192 
;------ END IMAGE --------
;------ BEGIN IMAGE --------
CABEZA_DRAGON_2
db 6 ; ancho
db 20 ; alto
db 192 , 0 , 0 , 0 , 0 , 192 
db 128 , 0 , 0 , 0 , 0 , 64 
db 0 , 0 , 0 , 0 , 0 , 0 
db 0 , 33 , 0 , 0 , 18 , 0 
db 0 , 26 , 3 , 3 , 37 , 0 
db 0 , 11 , 15 , 15 , 7 , 0 
db 0 , 3 , 15 , 15 , 3 , 0 
db 0 , 7 , 7 , 11 , 11 , 0 
db 0 , 15 , 33 , 18 , 15 , 0 
db 0 , 7 , 3 , 3 , 11 , 0 
db 0 , 7 , 15 , 15 , 11 , 0 
db 0 , 11 , 15 , 15 , 7 , 0 
db 0 , 7 , 7 , 11 , 11 , 0 
db 0 , 7 , 3 , 3 , 11 , 0 
db 0 , 1 , 11 , 7 , 2 , 0 
db 0 , 1 , 15 , 15 , 2 , 0 
db 0 , 0 , 3 , 3 , 0 , 0 
db 0 , 0 , 0 , 0 , 0 , 0 
db 128 , 0 , 0 , 0 , 0 , 64 
db 192 , 0 , 0 , 0 , 0 , 192 
;------ END IMAGE --------
;=================================================
_END_IMAGES
;=================================================

;=================================================
_BEGIN_3D_ZOOM_IMAGES
;=================================================
; limites aplicables a todas las imagenes con zoom
; para estos limites se considera el horizonte como el 0 y hacia abajo va creciendo hasta 200
;_ZOOM_LIMIT_B
;db 50


_ZOOM_LIMIT_A
db 120; entre 0 y limitA se pone imagen 3
;db 100
;db 150
_ZOOM_LIMIT_B
;db 100
db 50
;db 80; entre este limite y el limite A, se pone imagen 2
; mas cerca que limit B se pone imagen 1
;=================================================


;CARTEL_ZOOM
;db 1; ancho simbolico
;db 1; alto simbolico
;dw CARTEL1, CARTEL2, CARTEL3



;=================================================
_END_3D_ZOOM_IMAGES
;=================================================

;=================================================================
_BEGIN_3D_SEGMENTS
;=================================================================
; el ancho es el de la scanline
; el alto es el alto real
; luego va el dx, que puede ser positivo ( inclinado a izquierda) o negativo (inclinado a derecha)
; finalmente podria ir un dy que indique alto de patron de repeticion
db 0; esto es para que la primera imagen de tipo segmento sea > _3D_SEGMENTS
;--------------------------------------------------------------------

SEGMENT_XXX
db 8; ancho
db 8; alto
db 0; dx
db 0,72,192,192,192,192,132,0
;-------------------------------------------------------------------
SEGMENT_X0X
db 8; ancho
db 8; alto
db 0; dx
db 0,72,132,0,0,72,132,0
;------------------------------------------------
SEGMENT_X0X_2x
db 8; ancho
db 16; alto
db 0; dx
db 0,72,132,0,0,72,132,0
;-------------------------------------------------------------------
;-------------------------------------------------------------------

SEGMENT_X0X_3x
db 8; ancho
db 24; alto
db 0; dx
db 0,72,132,0,0,72,132,0

SEGMENT_X0X_4x
db 8; ancho
db 32; alto
db 0; dx
db 0,72,132,0,0,72,132,0
;-------------------------------------------------------------------

;-------------------------------------------------------------------
SEGMENT_X00
db 8; ancho
db 8; alto
db 0; dx
db 0,72,132,0,0,0,0,0
;-------------------------------------------------------------------
SEGMENT_X00_2x
db 8; ancho
db 16; alto
db 0; dx
db 0,72,132,0,0,0,0,0
;-------------------------------------------------------------------
SEGMENT_X00_3x
db 8; ancho
db 24; alto
db 0; dx
db 0,72,132,0,0,0,0,0


;-------------------------------------------------------------------
SEGMENT_00X
db 8; ancho
db 8; alto
db 0; dx
db 0,0,0,0,0,72,132,0
;-------------------------------------------------------------------
SEGMENT_XX0
db 8; ancho
db 8; alto
db 0; dx
db 0,72,192,192,192,132,0,0
;-------------------------------------------------------------------
SEGMENT_0XX
db 8; ancho
db 8; alto
db 0; dx
db 0,0,072,192,192,192,132,0
;-------------------------------------------------------------------
;-------------------------------------------------------------------
SEGMENT_0X0
db 8; ancho
db 8; alto
db 0; dx
db 0,0,072,192,132,0,0,0
;-------------------------------------------------------------------
SEGMENT_0X0_4x
db 8; ancho
db 32; alto
db 0; dx
db 0,0,072,192,132,0,0,0
;-------------------------------------------------------------------


SEGMENT_000

db 8; ancho
db 8; alto
db 0; dx
db 0,0,0,0,0,0,0,0,0,0,0,0



;=================================================
_END_3D_SEGMENTS
;=================================================

_END_GRAPH