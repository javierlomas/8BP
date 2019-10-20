10 CALL &6B78:|MUSIC,0,6
20 IF INKEY(47) THEN 20
30 MEMORY 20000:DEFINT A-Z
40 ON BREAK GOSUB 50: GOTO 60
50 |MUSICOFF:CALL &BC02:MODE 1:END
60 CALL &6B78:|MUSICOFF:MODE 0:CALL &BC02
70 |POKE,42040,50:|POKE,42042,0:'map parameters
80 ENV 1,11,-1,25:ENT 2,9,49,5,9,-10,15
90 '--- init stars
100 GOSUB 2130:'init stars
110 |3D,0:BORDER 0
120 '--- dim enemies,color, puntos
130 DIM e(50*4+50):'62 enemigos para map de ancho hasta 62*8=496
140 DIM color(20):color(0)=6:color(1)=6:color(5)=10:color(6)=7:color(7)=11:color(8)=6:color(9)=5:color(10)=8:color(11)=15:color(12)=9:color(15)=12:
150 DIM pts(11): DIM name$(11):'scores
160 '--- PRESENTACION ---
170 FOR i=0 TO 31:|SETUPSP,i,0,0:NEXT:
180 cor=32:cod=32:|COLSPALL,@cor,@cod:|PRINTSPALL,0,0,0,0:|COLSP,32,0,26:|COLSP,34,0,1
190 ' --- hall of fame
200 GOSUB 1500:'read score table
210 MODE 0:CALL &BC02:BORDER 0:INK 5,13:INK 0,0:INK 15,24:INK 1,14:|SETUPSP,1,0,1:|SETLIMITS,0,80,0,200: PAPER 0
220 LOCATE 8,2: PEN 10:PRINT "ERIDU": INK 14,17
230 c$="THE SPACE PORT":|PRINTAT,0,16,30,@c$
240 FOR y=0 TO 9: |PRINTAT,0,(y+10)*8,30,@name$(y):c$=STR$(pts(y)):|PRINTAT,0,(y+10)*8,50,@c$:NEXT
250 c$="SPONSORED BY":|PRINTAT,158,0,@c$
260 |SETUPSP,1,9,16:|PRINTSP,1,166,0:|PRINTSP,1,166,8:|SETUPSP,1,9,17:|PRINTSP,1,166,4
270 |SETUPSP,1,9,18:|PRINTSP,1,166,12:|SETUPSP,1,9,19:|PRINTSP,1,166,16:|SETUPSP,1,9,20:|PRINTSP,1,166,20
280 c$="HTTPS://AUAMSTRAD.ES":|PRINTAT,192,0,@c$
290 c$="JJGA":|PRINTAT,182,70,@c$
300 c$="2019":|PRINTAT,192,70,@c$
310 |SETUPSP,0,9,26:|PRINTSP,0,162,68
320 |UMAP,21400,&542E,0,200,0,1000:x=0:|PRINTSPALL,0,0,0,0
330 |STARS,0,20,14,1,0
340 |MAP2SP,0,x:x=1+x MOD 172
350 |PRINTSPALL
360 IF INKEY(47) THEN 330
370 '---LOGICA FASES
380 vidas=3:fuel=12:score=0: level=1
390 ciclo=0
400 WHILE (vidas>0)
410 IF (level=1) THEN GOSUB 530
420 IF (level=2) THEN GOSUB 1770
430 IF (level=3) THEN GOSUB 1980
440 IF (level=4) THEN GOSUB 2150
450 IF (level=5) THEN GOSUB 2290
460 IF (level=6) THEN 480:'fin
470 WEND
480 IF vidas =0 THEN 1280
490 IF vidas>0 THEN GOSUB 2630:'fin
500 GOTO 1280:'control score y run
510 'nunca llegamos aqui
520 '--- FASE 1 ---
530 MODE 0:BORDER 0:INK 0,0:INK 7,15:INK 1,6: INK 15,24: INK 5,0
540 GOSUB 1590:'paint marcadores
550 maxm=390:dis=0
560 '--- start fase 1 ----
570 ciclomax=1250:eb=0:'enable bomba 0=enabled
580 fase=23800:GOSUB 1240:'carga enemigos de fase1
590 |UMAP,23300,23792,0,200,0,500:'carga map fase1
600 my=180:mx=64:ox=16:GOSUB 2140:|STARS,0,20,2,0,0
610 |MUSIC,1,6
620 GOTO 640
630 '--- END FASE1 ---
640 '--- CICLO --- 
650 cosp=19:ciclo=INT(cicloaux /(ciclomax/3))*(ciclomax/3):m=0:n=0:c=0:reiniciar=0
660 IF ciclo> (ciclomax/3) THEN GOSUB 2450:c=9:'update enemigos
670 m=0:n=0:|STARS,0,10,2,0,0: ciclo=ciclo - (ciclo and 7)
680 GOSUB 860
'700 |MAP2SP,0,m:|AUTOALL,1:|PRINTSPALL:|COLSPALL:IF cor<32 THEN GOSUB 750:IF reiniciar THEN RETURN
700 CALL &64A8,0,m:CALL &71AC,1:CALL &62B8:CALL &7591:IF cor<32 THEN GOSUB 1020:IF reiniciar THEN RETURN
701 ciclo=ciclo+1:m=m+1
710 IF ciclo AND 7 THEN 680
'720 IF e(n) THEN cosp=cosp mod 7+20:|SETUPSP,cosp,0,139:|SETUPSP,cosp,15,e(n):|ROUTESP,cosp,e(n+3):|LOCATESP,cosp,e(n+1),e(n+2)
720 IF e(n) THEN cosp=cosp MOD 7+20:CALL &70D9,cosp,0,139:CALL &70D9,cosp,15,e(n):CALL &6606,cosp,e(n+3):CALL &6C88,cosp,e(n+1),e(n+2)
730 n=n+4
740 IF ciclo AND 15 THEN 680
'750 |STARS
750 CALL &7407
760 IF ciclo AND 63 THEN 680
770 c=color(c):INK 1,c
780 fuel=fuel-1:c$=" ":|PRINTAT,72,1+fuel,@c$
790 IF fuel THEN 820
800 c$="NO FUEL !":|PRINTAT,y-10,x,@c$
810 cicloaux=ciclo:ciclo=ciclomax:level=level-1:GOSUB 1160:'fuel=0
820 IF ciclo>=ciclomax THEN level=level+1:IF fuel>0 THEN cicloaux=0:RETURN ELSE RETURN
830 IF m>maxm THEN m=0:n=0:GOSUB 2450
840 GOTO 680
850 '---RUTINA LECTURA CONTROLES
860 IF INKEY(69) THEN 880
870 IF y<180 THEN y=y+4:POKE 27497,y:GOTO 900
880 IF INKEY(67) THEN 900
890 IF y THEN y=y-4:POKE 27497,y
900 IF INKEY(34) THEN 920
910 IF x>16 THEN x=x-2:POKE 27499,x:GOTO 940
920 IF INKEY(27) THEN 940
930 IF x<70 THEN x=x+2:POKE 27499,x
940 IF demora THEN demora=demora-1:RETURN ELSE IF INKEY(47) THEN RETURN
950 disp=(disp AND 1)+29
'960 |SETUPSP,disp,0,233:|SETUPSP,disp,15,0:|LOCATESP,disp,y+6,x-8:demora=7
960 CALL &70D9,disp,0,233:CALL &70D9,disp,15,0:CALL &6C88,disp,y+6,x-8:demora=7
970 IF eb THEN RETURN
980 IF PEEK(27448)=0 THEN 990 ELSE IF PEEK(27432)=0 THEN 1000 ELSE RETURN 
990 CALL &70D9,28,0,233:CALL &70D9,28,15,9:CALL &6C88,28,y+6,x:RETURN
1000 CALL &70D9,27,0,233:CALL &70D9,27,15,9:CALL &6C88,27,y+6,x:RETURN
1010 '--- RUTINA COLISION
1020 IF cor=31 THEN 1140
'1030 IF cor>28 THEN |SETUPSP,cor,15,4 ELSE |SETUPSP,cor,15,10
1030 IF cor>28 THEN CALL &70D9,cor,15,4 ELSE CALL &70D9,cor,15,10
1040 IF cod<20 THEN RETURN
1050 dircod=27015+cod*16
1060 IF PEEK(dircod)=1 THEN IF fuel<10 THEN c$=">":|PRINTAT,72,1+fuel,@c$:fuel=fuel+3
1070 IF PEEK(dircod)<3 THEN |SETUPSP,cod,15,6 ELSE |SETUPSP,cod,15,8
'1080 score=score+10:c$=STR$(score):|PRINTAT,40,2,@c$
1080 score=score+10:c$=STR$(score):call &607b,40,2,@c$
1090 IF score MOD 500 THEN RETURN
1100 IF vidas=3 THEN RETURN ELSE vidas=vidas+1:|SETLIMITS,0,80,0,200:FOR i=1 TO vidas:|PRINTSP,31,128+16*i,2:NEXT:|SETLIMITS,16,80,0,200
1110 |LOCATESP,31,y,x
1120 FOR i=0 TO 100 STEP 10:BORDER i MOD 16:SOUND 6,200-i,5,15:NEXT:BORDER 0
1130 RETURN
1140 '--- MUERTE NAVE
1150 cicloaux=ciclo
1160 |MUSICOFF:SOUND 3,145,200,12,1,2,12
1170 |SETUPSP,31,4+1:|SETUPSP,31,7,1
1180 FOR i=0 TO 100
1190 BORDER RND*15:CALL &BD19
1200 |ANIMA,31:|PRINTSP,31
1210 NEXT
1220 vidas=vidas-1
1230 reiniciar=1:RETURN
1240 '--- LOAD ENEMIGOS DE FASE
1250 FOR i=0 TO 49:FOR j=0 TO 3:e(i*4+j)=PEEK(fase+i*4+j):NEXT:NEXT:'enemigos
1260 FOR i=200 TO 240 STEP 4:e(i)=0:NEXT:'limpia (fase 2 llena mas)
1270 IF vidas>0 THEN RETURN ELSE 1280
1280 '--- FIN JUEGO & CHECK HIGH SCORE
1290 INK 0,0:BORDER 5: INK 2,15:INK 1,20:|MUSICOFF
1300 j=10:FOR i=9 TO 0 STEP -1:IF score>pts(i) THEN j=i:NEXT
1310 IF j=10 THEN RUN:'end game & start
1320 FOR i=8 TO j STEP -1:pts(i+1)=pts(i):name$(i+1)=name$(i):NEXT:'update table
1330 b$=INKEY$:IF b$<>"" THEN 1330
1340 MODE 1:BORDER 5: INK 3,8:LOCATE 6,8:PEN 3: PRINT "CONGRATULATIONS! NEW HIGH SCORE"
1350 LOCATE 14,10:PEN 2:PRINT "ENTER YOUR NAME"
1360 LOCATE 17,13:PEN 2:PRINT"--------"
1370 LOCATE 15,12:PEN 1:INPUT name$(j): name$(j)=MID$(name$(j),1,8):name$(j)=UPPER$(name$(j))
1380 pts(j)=score
1390 '--- WRITE SCORE TABLE
1400 dir=&A3D4:FOR i=0 TO 9: k=1
1410 FOR j=dir TO dir +7
1420 dato$=MID$(name$(i),k,1): IF dato$=""  THEN dato$=" "
1430 dato=ASC(dato$)
1440 POKE j,dato:k=k+1:NEXT j
1450 dir=dir+8
1460 |POKE,dir,pts(i)
1470 dir=dir+2
1480 NEXT i
1490 LOCATE 15,23:PRINT "PRESS SPACE":RUN
1500 '--- READ SCORE TABLE
1510 dir=&A3D4:FOR i=0 TO 9: name$(i)=""
1520 FOR j=dir TO dir +7
1530 letra=PEEK (j): name$(i)=name$(i)+CHR$(letra)
1540 NEXT j: dir=dir+8
1550 pts(i)=0:|PEEK,dir,@pts(i):dir=dir+2
1560 NEXT i
1570 RETURN
1580 |MUSICOFF
1590 '-- PAINT MARCADORES
1600 |MUSICOFF
1610 MODE 0:|SETLIMITS,0,80,0,200:|STARS,0,20,14,1,1:|STARS,20,40,11,1,1
1620 c$="READY LEVEL"+STR$(level)+" ":|PRINTAT,100,30,@c$
1630 FOR i=0 TO 40:|STARS,0,20,14,0,1:|STARS,20,40,11,0,2:NEXT
1640 MODE 0:FOR i=0 TO 31:|SETUPSP,i,0,0:NEXT:'reset sprites
1650 |SETUPSP,31,0,1+32:|SETUPSP,31,9,21
1660 |SETUPSP,30,0,1:|SETUPSP,30,9,23:|PRINTSP,30,2,2:|SETUPSP,30,9,24:|PRINTSP,30,2,8
1670 PLOT 0,0,8:DRAW 0,398:DRAW 16*8-2,398: DRAW 16*8-2,0,4:DRAW 16*8-2,0:DRAW 0,0
1680 c$="SCORE":|PRINTAT,32,2,@c$:c$=STR$(score):|PRINTAT,40,2,@c$
1690 c$="FUEL":|PRINTAT,64,2,@c$
1700 c$=">>>>>>":|PRINTAT,72,2,@c$:fuel=12:'fuel max
1710 c$="LEVEL":|PRINTAT,96,2,@c$
1720 c$="LIVES":|PRINTAT,128,2,@c$
1730 |SETLIMITS,0,80,0,200:FOR i=1 TO vidas:|PRINTSP,31,128+16*i,2:NEXT:|SETLIMITS,16,80,0,200
1740 c$=STR$(level):|PRINTAT,112,4,@c$
1750 y=100:x=30:|LOCATESP,31,y,x
1760 RETURN
1770 '--- FASE 2 ---
1780 MODE 0:BORDER 0:INK 0,0:INK 7,15:INK 1,6: INK 15,24: INK 5,0
1790 GOSUB 1590:'paint marcadores
1800 maxm=400:dis=0
1810 '--- start fase 2 ----
1820 cosp=19:ciclo=0
1830 r(0)=0:r(1)=1:r(2)=2:r(3)=12:r(4)=5:r(5)=11:r(6)=3
1840 FOR i=0 TO 240 STEP 4
1850 IF (i>159 AND i <167) THEN ru=0:GOTO 1880  ELSE IF i>167 THEN ru=3:GOTO 1880
1860 IF (i MOD 8) =0 THEN ru=3 ELSE ru=2+RND*5
1870 IF (i MOD 16)=0 THEN ru=0 ELSE IF i MOD 60=0 THEN ru=1
1880 e(i)=r(ru): ey=RND*150+20:e(i+3)=0
1890 IF ru>4 THEN e(i+3)=40+RND*100:IF ru=6 THEN ey=200 ELSE ey=-20
1900 e(i+1)=ey:e(i+2)=80
1910 NEXT:'para no pausar el juego
1920 |UMAP,23300,23300,0,0,0,0:'carga map void
1930 my=180:mx=64:ox=16:GOSUB 2140:'|STARS,0,20,2,0,0
1940 ciclomax=1340:eb=0:'enable bomba 0=enabled
1950 |MUSIC,1,6
1960 GOTO 640
1970 '--- END FASE2 ---
1980 '--- FASE3 ---
1990 MODE 0:BORDER 0:INK 0,0:INK 7,15:INK 1,6: INK 15,24: INK 5,0
2000 GOSUB 1590:'paint marcadores
2010 '--- start fase 3 ----
2020 cosp=19:t=0:ciclo=0
2030 fase=23100:GOSUB 1240:'carga enemigos
2040 maxm=440:dis=0
2050 |UMAP,22600,&59a4,0,201,0,500:'carga map fase2
2060 my=180:mx=64:ox=16:GOSUB 2140
2070 ciclomax=1340
2080 |MUSIC,0,6
2090 eb=0
2100 GOTO 640
2110 ' --- END FASE3 ---
2120 '--- INIT STARS
2130 k1=3:k2=8:my=199:mx=79:ox=0:'default constants
2140 FOR star=0 TO 40:sy=(1+k1*sx+sy)MOD my:sx=(1+k2*sy+sx)MOD mx:POKE &A62C+star*2,sy:POKE &A62C+star*2+1,sx+ox:NEXT: RETURN
2150 '--- FASE4 ---
2160 MODE 0:BORDER 0:INK 0,0:INK 7,15:INK 1,6: INK 15,24: INK 5,0
2170 GOSUB 1590:'paint marcadores
2180 '--- start fase 4 ----
2190 cosp=19:ciclo=0:m=0:n=0:c=0: reiniciar=0
2200 maxm=440:dis=0
2210 fase=22400:GOSUB 1240:'carga enemigos
2220 |UMAP,21900,22236,0,201,0,500:'carga map fase4
2230 my=180:mx=64:ox=16:GOSUB 2140:'|STARS,0,20,2,0,0
2240 ciclomax=1340
2250 |MUSIC,1,6
2260 eb=0
2270 GOTO 640
2280 ' --- END FASE4 ---
2290 '--- FASE 5 (SIN CONSTRUIR) ---
2300 level=level+1:RETURN:'asi no hace nada
2310 MODE 0:BORDER 0:INK 0,0:INK 7,15:INK 1,6: INK 15,24: INK 5,0
2320 GOSUB 1590:'paint marcadores
2330 maxm=400:dis=0
2340 '--- start fase 5 ----
2350 cosp=19:ciclo=0:m=0:n=0:c=0: reiniciar=0
2360 maxm=440:dis=0
2370 fase=21200:GOSUB 1240:'carga enemigos
2380 |UMAP,20700,20700,0,201,0,500:'carga map fase4
2390 my=180:mx=64:ox=16:GOSUB 2140:'|STARS,0,20,2,0,0
2400 ciclomax=1340
2410 |MUSIC,1,6
2420 eb=0
2430 GOTO 640
2440 ' --- END FASE5 ---
2450 '--- UPDATE ENEMIGOS PARA NO REPETIR
2460 IF level>1 THEN 2530
2470 'update enemigos fase1
2480 FOR i=0 TO 200 STEP 4
2490 IF e(i)=2 THEN e(i)=3:e(i+1)=e(i+1)-10:e(i+3)=80:GOTO 2520'cambia gemas por cohetes
2500 IF e(i)=3 AND i MOD 16=0 THEN e(i)=12:e(i+1)=RND*80:e(i+2)=80:e(i+3)=0:'cambia algun cohete por un ojo
2510 GOSUB 860:|AUTOALL,1:|PRINTSPALL:'para no pausar el juego
2520 NEXT: RETURN
2530 IF level>2 THEN 2550:'no hay update para fase 2
2540 RETURN
2550 IF level>3 THEN 2610
2560 'update ene fase 3
2570 FOR i=0 TO 200 STEP 4
2580 IF e(i)=2 THEN e(i)=12:'cambia gemas por ojos
2590 GOSUB 860:|AUTOALL,1:|PRINTSPALL:'para no pausar el juego
2600 NEXT:RETURN
2610 IF level >4 THEN 2620:'no hay update para fase 4
2620 RETURN
2630 '--- END OF GAME ---
2640 |MUSICOFF:MODE 0:BORDER 0:INK 0,0:INK 7,15:INK 1,6: INK 15,24: INK 5,0:|SETLIMITS,0,80,0,200
2650 c$="ENHORABUENA!!":|PRINTAT,15,26,@c$
2660 c$="BIENVENIDO AL PUERTO ESPACIAL DE ERIDU":|PRINTAT,30,0,@c$
2670 c$="  TAMBIEN LLAMADO ESTACION TIERRA 1":|PRINTAT,40,0,@c$
2680 c$="      CREADO HACE 430.000 ANOS":|PRINTAT,50,0,@c$
2690 c$=" POR LOS ANUNNAKI,NUESTRO PASADO ALIEN":|PRINTAT,60,0,@c$
2700 c$="EXIT PULSA E":|PRINTAT,80,26,@c$
2710 |SETUPSP,0,9,22:FOR x=2 TO 80 STEP 10:|PRINTSP,0,128,x:NEXT
2720 GOSUB 2130
2730 |SETUPSP,0,0,1:|SETUPSP,0,9,25:|PRINTSP,0,100,26
2740 WINDOW 1,20,20,25:PAPER 7:CLS:WINDOW 1,20,1,25: PAPER 0
2750 k=1:FOR y=100 TO 0 STEP -1: PLOT 0,y,15:DRAW 640,y:y=y-k:k=k*2:NEXT
2760 y=10:x=10:GOSUB 2840:x=54:GOSUB 2840
2770 FOR x=-320 TO 320 STEP 20:PLOT 320+x,100,15:DRAW 320+3*x,0:NEXT
2780 |MUSIC,2,6: c=15
2790 |STARS,0,40,1,-1,0: INK 1,c
2800 ciclo=ciclo+1:IF ciclo MOD 100 =0 THEN INK 7,c: c=color(c): ciclo=ciclo MOD 10000
2810 IF INKEY(58)=0 THEN 2830
2820 GOTO 2790
2830 |MUSICOFF:RETURN
2840 |SETUPSP,0,9,23:|PRINTSP,0,y,x:|SETUPSP,0,9,24:|PRINTSP,0,y,x+6:RETURN