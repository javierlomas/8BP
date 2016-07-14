IMAGEN0

SP_SUELO
;------ BEGIN SPRITE --------
db 4 ; ancho
db 8 ; alto
db 64 , 0 , 128 , 0 
db 64 , 128 , 128 , 128 
db 192 , 192 , 192 , 192 
db 192 , 64 , 192 , 192 
db 192 , 192 , 128 , 192 
db 128 , 192 , 64 , 192 
db 192 , 64 , 192 , 64 
db 192 , 64 , 192 , 192 
;------ END SPRITE --------
SP_TRONCO
;------ BEGIN SPRITE --------
db 4 ; ancho
db 8 ; alto
db 128 , 192 , 192 , 64 
db 128 , 192 , 192 , 64 
db 128 , 192 , 64 , 64 
db 192 , 192 , 64 , 192 
db 192 , 192 , 64 , 192 
db 192 , 64 , 64 , 64 
db 192 , 64 , 192 , 64 
db 192 , 64 , 192 , 64 
;------ END SPRITE --------

;------ BEGIN SPRITE --------
;------ BEGIN SPRITE --------
SP_RAMA_DE
db 4 ; ancho
db 8 ; alto
db 128 , 192 , 0 , 0 
db 64 , 64 , 128 , 0 
db 0 , 192 , 64 , 0 
db 0 , 64 , 128 , 128 
db 0 , 0 , 192 , 64 
db 0 , 0 , 64 , 192 
db 0 , 0 , 0 , 192 
db 0 , 0 , 0 , 64 
;------ END SPRITE --------
;------ END SPRITE --------
;------ BEGIN SPRITE --------
SP_RAMA_IZ
db 4 ; ancho
db 8 ; alto
db 0 , 0 , 192 , 64 
db 0 , 64 , 128 , 128 
db 0 , 128 , 192 , 0 
db 64 , 64 , 128 , 0 
db 128 , 192 , 0 , 0 
db 192 , 128 , 0 , 0 
db 192 , 0 , 0 , 0 
db 128 , 0 , 0 , 0 
;------ END SPRITE --------
;------ BEGIN SPRITE --------
SP_TIERRA
db 4 ; ancho
db 8 ; alto
db 192 , 192 , 192 , 192 
db 128 , 192 , 128 , 64 
db 64 , 128 , 64 , 192 
db 192 , 192 , 192 , 192 
db 192 , 192 , 192 , 128 
db 64 , 192 , 192 , 64 
db 192 , 0 , 192 , 192 
db 192 , 192 , 64 , 192 
;------ END SPRITE --------
;------ BEGIN SPRITE --------
SP_hojas

db 4 ; ancho
db 8 ; alto
db 1 , 3 , 1 , 2 
db 15 , 43 , 18 , 11 
db 11 , 3 , 33 , 3 
db 11 , 3 , 3 , 22 
db 18 , 3 , 45 , 41 
db 3 , 22 , 22 , 22 
db 3 , 10 , 41 , 41 
db 1 , 41 , 20 , 2 
;------ END SPRITE --------
;------ END SPRITE --------
;------ BEGIN SPRITE --------
SP_LADRILLO
db 4 ; ancho
db 8 ; alto
db 192 , 128 , 192 , 192 
db 192 , 128 , 192 , 192 
db 192 , 128 , 192 , 192 
db 0 , 0 , 0 , 0 
db 192 , 192 , 64 , 64 
db 192 , 128 , 128 , 64 
db 192 , 64 , 64 , 64 
db 0 , 0 , 0 , 0 
;------ END SPRITE --------
;------ BEGIN SPRITE --------
SP_TEJADO1
db 4 ; ancho
db 8 ; alto
db 0 , 0 , 0 , 51 
db 0 , 0 , 17 , 51 
db 0 , 0 , 54 , 57 
db 0 , 17 , 60 , 60 
db 0 , 51 , 51 , 54 
db 17 , 51 , 51 , 51 
db 54 , 60 , 57 , 51 
db 60 , 60 , 60 , 60 
;------ END SPRITE --------
;------ BEGIN SPRITE --------
SP_TEJADO
db 4 ; ancho
db 8 ; alto
db 51 , 51 , 51 , 51 
db 51 , 38 , 25 , 51 
db 38 , 28 , 44 , 25 
db 28 , 60 , 60 , 44 
db 51 , 51 , 51 , 51 
db 12 , 51 , 51 , 12 
db 60 , 25 , 38 , 60 
db 60 , 44 , 28 , 60 
;------ END SPRITE --------
;------ BEGIN SPRITE --------
SOLDADO_R0
db 6 ; ancho
db 24 ; alto
db 192 , 0 , 0 , 0 , 192 , 192 
db 128 , 0 , 12 , 12 , 64 , 192 
db 0 , 4 , 48 , 48 , 8 , 192 
db 0 , 16 , 24 , 48 , 36 , 64 
db 0 , 36 , 48 , 48 , 48 , 72 
db 0 , 36 , 48 , 48 , 48 , 72 
db 0 , 48 , 48 , 48 , 48 , 72 
db 0 , 48 , 36 , 12 , 12 , 64 
db 0 , 46 , 12 , 46 , 63 , 72 
db 0 , 29 , 63 , 63 , 63 , 72 
db 0 , 21 , 63 , 63 , 46 , 64 
db 0 , 4 , 63 , 63 , 44 , 192 
db 0 , 4 , 12 , 12 , 13 , 192 
db 0 , 25 , 51 , 51 , 13 , 64 
db 0 , 25 , 50 , 51 , 15 , 64 
db 0 , 25 , 48 , 49 , 14 , 64 
db 0 , 25 , 50 , 51 , 10 , 64 
db 0 , 4 , 50 , 51 , 8 , 64 
db 0 , 4 , 50 , 38 , 0 , 64 
db 0 , 0 , 17 , 12 , 8 , 64 
db 0 , 4 , 32 , 24 , 36 , 64 
db 0 , 4 , 48 , 24 , 48 , 64 
db 0 , 0 , 12 , 4 , 12 , 64 
db 128 , 0 , 0 , 0 , 0 , 64 
;------ END SPRITE --------

;------ BEGIN SPRITE --------
SOLDADO_R1
db 6 ; ancho
db 24 ; alto
db 192 , 0 , 0 , 0 , 192 , 192 
db 128 , 0 , 12 , 12 , 64 , 192 
db 0 , 4 , 48 , 48 , 8 , 192 
db 0 , 16 , 24 , 48 , 36 , 64 
db 0 , 36 , 48 , 48 , 48 , 72 
db 0 , 36 , 48 , 48 , 48 , 72 
db 0 , 48 , 48 , 12 , 12 , 64 
db 0 , 48 , 36 , 29 , 46 , 72 
db 0 , 63 , 12 , 46 , 63 , 72 
db 0 , 29 , 63 , 63 , 63 , 64 
db 0 , 21 , 63 , 63 , 46 , 192 
db 128 , 4 , 63 , 63 , 44 , 64 
db 0 , 4 , 12 , 12 , 12 , 64 
db 0 , 25 , 51 , 51 , 24 , 72 
db 0 , 25 , 50 , 51 , 15 , 96 
db 0 , 25 , 48 , 49 , 26 , 72 
db 0 , 25 , 50 , 51 , 14 , 64 
db 0 , 4 , 50 , 38 , 8 , 64 
db 128 , 4 , 51 , 38 , 0 , 64 
db 0 , 4 , 25 , 12 , 24 , 72 
db 0 , 48 , 12 , 12 , 24 , 72 
db 0 , 24 , 36 , 12 , 48 , 72 
db 0 , 4 , 48 , 24 , 36 , 72 
db 128 , 0 , 0 , 0 , 0 , 64 
;------ BEGIN SPRITE --------
SOLDADO_R2
db 6 ; ancho
db 24 ; alto
db 192 , 0 , 0 , 0 , 192 , 192 
db 0 , 0 , 12 , 12 , 64 , 192 
db 0 , 4 , 48 , 48 , 8 , 192 
db 0 , 24 , 24 , 48 , 36 , 64 
db 0 , 36 , 48 , 48 , 48 , 72 
db 0 , 36 , 48 , 48 , 48 , 72 
db 0 , 48 , 48 , 48 , 48 , 72 
db 0 , 24 , 36 , 12 , 12 , 64 
db 0 , 46 , 12 , 46 , 63 , 72 
db 0 , 29 , 63 , 63 , 63 , 72 
db 0 , 21 , 63 , 63 , 46 , 64 
db 0 , 4 , 63 , 63 , 44 , 192 
db 0 , 4 , 12 , 12 , 8 , 192 
db 0 , 25 , 51 , 51 , 8 , 64 
db 0 , 25 , 50 , 51 , 13 , 64 
db 0 , 25 , 48 , 49 , 13 , 64 
db 0 , 25 , 50 , 51 , 8 , 64 
db 0 , 4 , 50 , 51 , 0 , 64 
db 0 , 4 , 50 , 38 , 0 , 64 
db 0 , 0 , 17 , 8 , 0 , 64 
db 0 , 0 , 16 , 32 , 0 , 64 
db 0 , 0 , 16 , 48 , 0 , 64 
db 0 , 0 , 4 , 12 , 0 , 64 
db 0 , 0 , 0 , 0 , 0 , 64
;------ END SPRITE --------
;------ BEGIN SPRITE --------
SOLDADO_I0

db 6 ; ancho
db 24 ; alto
db 192 , 192 , 0 , 0 , 0 , 192 
db 192 , 128 , 12 , 12 , 0 , 64 
db 192 , 4 , 48 , 48 , 8 , 0 
db 128 , 24 , 48 , 36 , 32 , 0 
db 132 , 48 , 48 , 48 , 24 , 0 
db 132 , 48 , 48 , 48 , 24 , 0 
db 132 , 48 , 48 , 48 , 48 , 0 
db 128 , 12 , 12 , 24 , 48 , 0 
db 132 , 63 , 29 , 12 , 29 , 0 
db 132 , 63 , 63 , 63 , 46 , 0 
db 128 , 29 , 63 , 63 , 42 , 0 
db 192 , 28 , 63 , 63 , 8 , 0 
db 192 , 14 , 12 , 12 , 8 , 0 
db 128 , 14 , 51 , 51 , 38 , 0 
db 128 , 15 , 51 , 49 , 38 , 0 
db 128 , 13 , 50 , 48 , 38 , 0 
db 128 , 5 , 51 , 49 , 38 , 0 
db 128 , 4 , 51 , 49 , 8 , 0 
db 128 , 0 , 25 , 49 , 8 , 0 
db 128 , 4 , 12 , 34 , 0 , 0 
db 128 , 24 , 36 , 16 , 8 , 0 
db 128 , 48 , 36 , 48 , 8 , 0 
db 128 , 12 , 8 , 12 , 0 , 0 
db 128 , 0 , 0 , 0 , 0 , 64 
;------ END SPRITE --------
;------ BEGIN SPRITE --------
SOLDADO_I1
db 6 ; ancho
db 24 ; alto
db 192 , 192 , 0 , 0 , 0 , 192 
db 192 , 128 , 12 , 12 , 0 , 64 
db 192 , 4 , 48 , 48 , 8 , 0 
db 128 , 24 , 48 , 36 , 32 , 0 
db 132 , 48 , 48 , 48 , 24 , 0 
db 132 , 48 , 48 , 48 , 24 , 0 
db 128 , 12 , 12 , 48 , 48 , 0 
db 132 , 29 , 46 , 24 , 48 , 0 
db 132 , 63 , 29 , 12 , 63 , 0 
db 128 , 63 , 63 , 63 , 46 , 0 
db 192 , 29 , 63 , 63 , 42 , 0 
db 128 , 28 , 63 , 63 , 8 , 64 
db 128 , 12 , 12 , 12 , 8 , 0 
db 132 , 36 , 51 , 51 , 38 , 0 
db 144 , 15 , 51 , 49 , 38 , 0 
db 132 , 37 , 50 , 48 , 38 , 0 
db 128 , 13 , 51 , 49 , 38 , 0 
db 128 , 4 , 25 , 49 , 8 , 0 
db 128 , 0 , 25 , 51 , 8 , 64 
db 132 , 36 , 12 , 38 , 8 , 0 
db 132 , 36 , 12 , 12 , 48 , 0 
db 132 , 48 , 12 , 24 , 36 , 0 
db 132 , 24 , 36 , 48 , 8 , 0 
db 128 , 0 , 0 , 0 , 0 , 64 
;------ END SPRITE --------
;------ BEGIN SPRITE --------
SOLDADO_I2
db 6 ; ancho
db 24 ; alto
db 192 , 192 , 0 , 0 , 0 , 192 
db 192 , 128 , 12 , 12 , 0 , 0 
db 192 , 4 , 48 , 48 , 8 , 0 
db 128 , 24 , 48 , 36 , 36 , 0 
db 132 , 48 , 48 , 48 , 24 , 0 
db 132 , 48 , 48 , 48 , 24 , 0 
db 132 , 48 , 48 , 48 , 48 , 0 
db 128 , 12 , 12 , 24 , 36 , 0 
db 132 , 63 , 29 , 12 , 29 , 0 
db 132 , 63 , 63 , 63 , 46 , 0 
db 128 , 29 , 63 , 63 , 42 , 0 
db 192 , 28 , 63 , 63 , 8 , 0 
db 192 , 4 , 12 , 12 , 8 , 0 
db 128 , 4 , 51 , 51 , 38 , 0 
db 128 , 14 , 51 , 49 , 38 , 0 
db 128 , 14 , 50 , 48 , 38 , 0 
db 128 , 4 , 51 , 49 , 38 , 0 
db 128 , 0 , 51 , 49 , 8 , 0 
db 128 , 0 , 25 , 49 , 8 , 0 
db 128 , 0 , 4 , 34 , 0 , 0 
db 128 , 0 , 16 , 32 , 0 , 0 
db 128 , 0 , 48 , 32 , 0 , 0 
db 128 , 0 , 12 , 8 , 0 , 0 
db 128 , 0 , 0 , 0 , 0 , 0 
;------ END SPRITE --------
;------ BEGIN SPRITE --------
SP_CALDERO

db 5 ; ancho
db 16 ; alto
db 192 , 192 , 192 , 192 , 192 
db 192 , 132 , 12 , 72 , 192 
db 192 , 9 , 3 , 6 , 192 
db 132 , 6 , 12 , 9 , 72 
db 132 , 22 , 44 , 13 , 72 
db 192 , 9 , 3 , 6 , 192 
db 132 , 12 , 3 , 13 , 72 
db 132 , 9 , 3 , 3 , 72 
db 12 , 3 , 3 , 3 , 14 
db 9 , 3 , 3 , 3 , 14 
db 9 , 3 , 3 , 3 , 12 
db 9 , 3 , 3 , 6 , 14 
db 9 , 3 , 3 , 7 , 12 
db 9 , 3 , 3 , 6 , 14 
db 132 , 3 , 3 , 13 , 12 
db 192 , 24 , 6 , 14 , 72 
;------ END SPRITE --------
;------ END SPRITE --------