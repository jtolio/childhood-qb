DECLARE SUB MouseDriver (AX%, bx%, CX%, DX%)
DECLARE FUNCTION MouseInit% ()
DECLARE SUB mouseshow ()
DECLARE SUB mousestatus (lb%, rb%, xmouse%, ymouse%)
DECLARE SUB paintpro ()
DIM WOLFINTR(23, 80)
DIM a2(23, 80)
DIM SHARED mouse$
versionnumber$ = "3.0"
RESTORE
mouse$ = SPACE$(57)
FOR i% = 1 TO 57
READ a$
h$ = CHR$(VAL("&H" + a$))
MID$(mouse$, i%, 1) = h$
NEXT i%
DATA 55,89,E5,8B,5E,0C,8B,07,50,8B,5E,0A,8B,07,50,8B
DATA 5E,08,8B,0F,8B,5E,06,8B,17,5B,58,1E,07,CD,33,53
DATA 8B,5E,0C,89,07,58,8B,5E,0A,89,07,8B,5E,08,89,0F
DATA 8B,5E,06,89,17,5D,CA,08,00
CLS
MS% = MouseInit%
IF NOT MS% THEN
LET AMOUSE$ = "NO":
END IF
LET AMOUSE$ = "YES"

WolfIntro:
CLS
DATA  219 ,  3910 ,  1897 ,  1900 ,  1893 ,  1824 ,  1824 ,  1824 ,  1824 ,  3909
DATA  1892 ,  1897 ,  1908 ,  1824 ,  1824 ,  1824 ,  219 ,  3922 ,  1909 ,  1902
DATA  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219
DATA  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219
DATA  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219
DATA  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219
DATA  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  3912 ,  1893 ,  1900 ,  1904
DATA  1824 ,  1824 ,  1824 ,  1824 ,  1861 ,  3960 ,  1897 ,  1908 ,  219 ,  219
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  1243 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243
DATA  1243 ,  1243 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  1243 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  1243 ,  475 ,  475 ,  1243 ,  475 ,  475 ,  1243 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475 ,  475 ,  475
DATA  475 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  475 ,  475 ,  475
DATA  1243 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  1243 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243
DATA  1243 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  1243
DATA  1243 ,  1243 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  475 ,  475
DATA  1243 ,  1243 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243
DATA  1243 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  1243 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  475
DATA  475 ,  1243 ,  1243 ,  475 ,  475 ,  1243 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  475 ,  475
DATA  475 ,  1243 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  1243 ,  1243 ,  1243 ,  475 ,  1243 ,  1243 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  1243 ,  1243 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  1243 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  731 ,  731 ,  731 ,  731 ,  731 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  731 ,  731
DATA  731 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  731 ,  731
DATA  731 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  731 ,  731 ,  731 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  731 ,  731 ,  731 ,  731 ,  731 ,  731 ,  731
DATA  731 ,  731 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  475 ,  475 ,  731 ,  731 ,  731 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  731 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  731 ,  731 ,  731
DATA  731 ,  731 ,  731 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  731 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  731 ,  731 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  731 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  731
DATA  731 ,  731 ,  731 ,  731 ,  731 ,  731 ,  731 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  731 ,  731 ,  731 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  731 ,  731 ,  731 ,  731
DATA  731 ,  731 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
RESTORE WolfIntro
FOR i = 1 TO 23
FOR j = 1 TO 80
READ WOLFINTR(i, j)
NEXT j
NEXT i
FOR i = 1 TO 23
FOR j = 1 TO 80
LOCATE i, j
COLOR FIX(WOLFINTR(i, j) / 256)
PRINT CHR$(WOLFINTR(i, j) MOD 256)
NEXT j
NEXT i
FOR i = 1 TO 23
FOR j = 1 TO 80
WOLFINTR(i, j) = 15 * 256 + 32
NEXT j
NEXT i
COLOR 15, 1
LOCATE 8, 55
PRINT "WOLF EDIT Version " + versionnumber$
LOCATE 9, 47
PRINT "(C) WolfWare Interactive, Inc. '98"
COLOR 7, 1
LOCATE 23, 55
PRINT "Press ENTER to continue..."
SLEEP
pagenum = 500
linenum = pagenum * 22
linenum = linenum + 1
DIM word$(linenum)
CLS
COLOR 0, 0
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
mouseshow
page = 1
start:
GOTO bluemenu
start2:
mousestatus lb%, rb%, xmouse%, ymouse%
lm$ = INKEY$
lb = lb% + 2: IF lb = 2 THEN lb = 0
rb = rb% + 2: IF rb = 2 THEN rb = 0
x = xmouse% / 8 + 1
y = ymouse% / 8 + 1
COLOR 7, 0
LOCATE 1, 32
PRINT "X"; x; "Y"; y; "LB"; lb; "RB"; rb; "Page:"; page
IF lm$ = CHR$(27) THEN CLS : COLOR 15, 0: END
IF lm$ = CHR$(102) THEN GOTO filemenu
IF lm$ = CHR$(70) THEN GOTO filemenu
IF lm$ = CHR$(101) THEN GOTO editmenu
IF lm$ = CHR$(69) THEN GOTO editmenu
IF lm$ = CHR$(114) THEN GOTO runmenu
IF lm$ = CHR$(82) THEN GOTO runmenu
IF lm$ = CHR$(104) THEN GOTO helpmenu
IF lm$ = CHR$(72) THEN GOTO helpmenu
IF lm$ = CHR$(120) THEN CLS : COLOR 15, 0: END
IF lm$ = CHR$(88) THEN END
IF lb = 1 THEN IF rb = 0 THEN IF x = 2 THEN IF y = 1 THEN GOTO filemenu
IF lb = 1 THEN IF rb = 0 THEN IF x = 10 THEN IF y = 1 THEN GOTO editmenu
IF lb = 1 THEN IF rb = 0 THEN IF x = 18 THEN IF y = 1 THEN GOTO runmenu
IF lb = 1 THEN IF rb = 0 THEN IF x = 67 THEN IF y = 1 THEN GOTO helpmenu
IF lb = 1 THEN IF rb = 0 THEN IF x = 76 THEN IF y = 1 THEN CLS : COLOR 15, 0: END
IF lb = 1 THEN IF rb = 0 THEN IF y >= 2 THEN IF y <= 23 THEN GOTO lines
GOTO start2
bluemenu:
CLS
DATA  219 ,  3910 ,  1897 ,  1900 ,  1893 ,  1824 ,  1824 ,  1824 ,  1824 ,  3909
DATA  1892 ,  1897 ,  1908 ,  1824 ,  1824 ,  1824 ,  219 ,  3922 ,  1909 ,  1902
DATA  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219
DATA  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219
DATA  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219
DATA  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219
DATA  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  3912 ,  1893 ,  1900 ,  1904
DATA  1824 ,  1824 ,  1824 ,  1824 ,  1861 ,  3960 ,  1897 ,  1908 ,  219 ,  219
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
RESTORE bluemenu
FOR i = 1 TO 23
FOR j = 1 TO 80
READ a2(i, j)
NEXT j
NEXT i
FOR i = 1 TO 23
FOR j = 1 TO 80
LOCATE i, j
COLOR FIX(a2(i, j) / 256)
PRINT CHR$(a2(i, j) MOD 256)
NEXT j
NEXT i
FOR i = 1 TO 23
FOR j = 1 TO 80
a2(i, j) = 15 * 256 + 32
NEXT j
NEXT i
COLOR 15, 1
GOTO pageprinter
lineinput:
COLOR 15, 1
LOCATE y, 1: INPUT "", inputed$
inputed$ = LEFT$(inputed$, 80)
COLOR 15, 0
RETURN
filemenu:
COLOR 0, 7
LOCATE 2, 1: PRINT "ษออออออออออออออออออป"
LOCATE 3, 1: PRINT "บ New              บ"
LOCATE 4, 1: PRINT "บ Save             บ"
LOCATE 5, 1: PRINT "บ Open             บ"
LOCATE 6, 1: PRINT "ฬออออออออออออออออออน"
LOCATE 7, 1: PRINT "บ Print            บ"
LOCATE 8, 1: PRINT "บ OS Shell         บ"
LOCATE 9, 1: PRINT "ฬออออออออออออออออออน"
LOCATE 10, 1: PRINT "บ Cancel           บ"
LOCATE 11, 1: PRINT "บ Exit             บ"
LOCATE 12, 1: PRINT "ศออออออออออออออออออผ"
COLOR 15, 7
LOCATE 3, 3: PRINT "N"
LOCATE 4, 3: PRINT "S"
LOCATE 5, 3: PRINT "O"
LOCATE 7, 3: PRINT "P"
LOCATE 8, 7: PRINT "h"
LOCATE 11, 3: PRINT "E"
LOCATE 10, 3: PRINT "C"
doloop:
mousestatus lb%, rb%, xmouse%, ymouse%
lm$ = INKEY$
lb = lb% + 2: IF lb = 2 THEN lb = 0
rb = rb% + 2: IF rb = 2 THEN rb = 0
x = xmouse% / 8 + 1
y = ymouse% / 8 + 1
LOCATE 1, 32
COLOR 7, 0
PRINT "X"; x; "Y"; y; "LB"; lb; "RB"; rb; "Page:"; page
IF lb = 1 THEN IF rb = 0 THEN IF x = 3 THEN IF y = 3 THEN GOTO new
IF lb = 1 THEN IF rb = 0 THEN IF y = 4 THEN IF x = 3 THEN GOTO save
IF lb = 1 THEN IF rb = 0 THEN IF y = 5 THEN IF x = 3 THEN GOTO opener
IF lb = 1 THEN IF rb = 0 THEN IF y = 7 THEN IF x = 3 THEN GOTO printer
IF lb = 1 THEN IF rb = 0 THEN IF y = 8 THEN IF x = 7 THEN CLS : COLOR 15, 0: SHELL: GOTO start
IF lb = 1 THEN IF rb = 0 THEN IF y = 10 THEN IF x = 3 THEN GOTO start
IF lb = 1 THEN IF rb = 0 THEN IF y = 11 THEN IF x = 3 THEN CLS : COLOR 15, 0: END
IF lm$ = "N" THEN GOTO new
IF lm$ = "n" THEN GOTO new
IF lm$ = "S" THEN GOTO save
IF lm$ = "s" THEN GOTO save
IF lm$ = "O" THEN GOTO opener
IF lm$ = "o" THEN GOTO opener
IF lm$ = "P" THEN GOTO printer
IF lm$ = "p" THEN GOTO printer
IF lm$ = "H" THEN CLS : COLOR 15, 0: SHELL: GOTO start
IF lm$ = "h" THEN CLS : COLOR 15, 0: SHELL: GOTO start
IF lm$ = "C" THEN GOTO start
IF lm$ = "c" THEN GOTO start
IF lm$ = "E" THEN CLS : COLOR 15, 0: END
IF lm$ = "e" THEN CLS : COLOR 15, 0: END
GOTO doloop
new:
FOR i = 1 TO linenum
word$(i) = ""
NEXT i
GOTO start
save:
COLOR 0, 7
LOCATE 8, 22: PRINT "ษออออออออออออออออออออออออออออออออออออออออออป"
LOCATE 9, 22: PRINT "บ Where is it to be saved                  บ"
LOCATE 10, 22: PRINT "บ [drive]:\[folder(s)]\[nameoffile].[ext.] บ"
LOCATE 11, 22: PRINT "บ "
LOCATE 11, 64: PRINT " บ"
LOCATE 12, 22: PRINT "ศออออออออออออออออออออออออออออออออออออออออออผ"
COLOR 15, 0
LOCATE 11, 24: PRINT "                                        "
LOCATE 11, 24: INPUT ">", where$
OPEN where$ FOR OUTPUT AS #1
FOR i = 2 TO linenum
PRINT #1, word$(i)
NEXT i
CLOSE #1
GOTO start
opener:
COLOR 0, 7
LOCATE 8, 22: PRINT "ษออออออออออออออออออออออออออออออออออออออออออป"
LOCATE 9, 22: PRINT "บ Where is the file to be opened?          บ"
LOCATE 10, 22: PRINT "บ [drive]:\[folder(s)]\[nameoffile].[ext.] บ"
LOCATE 11, 22: PRINT "บ "
LOCATE 11, 64: PRINT " บ"
LOCATE 12, 22: PRINT "ศออออออออออออออออออออออออออออออออออออออออออผ"
COLOR 15, 0
LOCATE 11, 24: PRINT "                                        "
LOCATE 11, 24: INPUT ">", where$
OPEN where$ FOR INPUT AS #1
i = 2
DO WHILE NOT EOF(1) AND i <= linenum
INPUT #1, word$(i)
i = i + 1
LOOP
CLOSE #1
GOTO start
printer:
OPEN "LPT1" FOR OUTPUT AS #1
FOR i = 2 TO linenum
PRINT #1, word$(i)
NEXT i
PRINT #1, ""
CLOSE #1
GOTO start
lines:
GOSUB lineinput
temp = page - 1
temp = temp * 22
temp = temp + y
word$(temp) = inputed$
GOTO start
editmenu:
COLOR 0, 7
LOCATE 2, 1: PRINT "ษออออออออออออออออออป"
LOCATE 3, 1: PRINT "บ Select Page...   บ"
LOCATE 4, 1: PRINT "บ Next Page...     บ"
LOCATE 5, 1: PRINT "บ Previous Page... บ"
LOCATE 6, 1: PRINT "ฬออออออออออออออออออน"
LOCATE 7, 1: PRINT "บ Cancel           บ"
LOCATE 8, 1: PRINT "ศออออออออออออออออออผ"
COLOR 15, 7
LOCATE 3, 3: PRINT "S"
LOCATE 4, 3: PRINT "N"
LOCATE 5, 3: PRINT "P"
LOCATE 7, 3: PRINT "C"
doloop2:
mousestatus lb%, rb%, xmouse%, ymouse%
lm$ = INKEY$
lb = lb% + 2: IF lb = 2 THEN lb = 0
rb = rb% + 2: IF rb = 2 THEN rb = 0
x = xmouse% / 8 + 1
y = ymouse% / 8 + 1
LOCATE 1, 32
COLOR 7, 0
PRINT "X"; x; "Y"; y; "LB"; lb; "RB"; rb; "Page:"; page
IF lb = 1 THEN IF rb = 0 THEN IF y = 3 THEN IF x = 3 THEN GOTO page
IF lb = 1 THEN IF rb = 0 THEN IF y = 4 THEN IF x = 3 THEN GOTO nexter
IF lb = 1 THEN IF rb = 0 THEN IF y = 5 THEN IF x = 3 THEN GOTO previous
IF lb = 1 THEN IF rb = 0 THEN IF y = 7 THEN IF x = 3 THEN GOTO start
IF lm$ = "N" THEN GOTO nexter
IF lm$ = "n" THEN GOTO nexter
IF lm$ = "S" THEN GOTO page
IF lm$ = "s" THEN GOTO page
IF lm$ = "P" THEN GOTO previous
IF lm$ = "p" THEN GOTO previous
IF lm$ = "C" THEN GOTO start
IF lm$ = "c" THEN GOTO start
GOTO doloop2
nexter:
IF page = pagenum THEN page = 1: GOTO start
page = page + 1
GOTO start
page:
COLOR 0, 7
LOCATE 8, 22: PRINT "ษอออออออออออออออออออออออออป"
LOCATE 9, 22: PRINT "บ What page? ( 1 -        บ"
LOCATE 10, 22: PRINT "บ "
LOCATE 10, 47: PRINT " บ"
LOCATE 11, 22: PRINT "ศอออออออออออออออออออออออออผ"
LOCATE 9, 41: PRINT STR$(pagenum) + ")"
COLOR 15, 0
LOCATE 10, 24: PRINT "                       "
LOCATE 10, 24: INPUT ">", page
GOTO start
previous:
IF page = 1 THEN page = pagenum: GOTO start
page = page - 1
GOTO start
runmenu:
COLOR 0, 7
LOCATE 2, 3: PRINT "ษออออออออออออออออออป"
LOCATE 3, 3: PRINT "บ PaintPro 4.0     บ"
LOCATE 4, 3: PRINT "ฬออออออออออออออออออน"
LOCATE 5, 3: PRINT "บ Cancel           บ"
LOCATE 6, 3: PRINT "ศออออออออออออออออออผ"
COLOR 15, 7
LOCATE 3, 5: PRINT "P"
LOCATE 5, 5: PRINT "C"
doloop8:
mousestatus lb%, rb%, xmouse%, ymouse%
lm$ = INKEY$
lb = lb% + 2: IF lb = 2 THEN lb = 0
rb = rb% + 2: IF rb = 2 THEN rb = 0
x = xmouse% / 8 + 1
y = ymouse% / 8 + 1
LOCATE 1, 32
COLOR 7, 0
PRINT "X"; x; "Y"; y; "LB"; lb; "RB"; rb; "Page:"; page
IF lm$ = "P" THEN paintpro: GOTO start
IF lm$ = "p" THEN paintpro: GOTO start
IF lm$ = "c" THEN GOTO start
IF lm$ = "C" THEN GOTO start
IF lb = 1 THEN IF rb = 0 THEN IF y = 3 THEN IF x = 5 THEN paintpro: GOTO start
IF lb = 1 THEN IF rb = 0 THEN IF y = 5 THEN IF x = 5 THEN GOTO start
GOTO doloop8
helpmenu:
COLOR 0, 7
LOCATE 2, 64: PRINT "ษอออออออออออออออป"
LOCATE 3, 64: PRINT "บ About         บ"
LOCATE 4, 64: PRINT "บ Help          บ"
LOCATE 5, 64: PRINT "ฬอออออออออออออออน"
LOCATE 6, 64: PRINT "บ Cancel        บ"
LOCATE 7, 64: PRINT "ศอออออออออออออออผ"
COLOR 15, 7
LOCATE 3, 66: PRINT "A"
LOCATE 6, 66: PRINT "C"
LOCATE 4, 66: PRINT "H"
doloop9:
mousestatus lb%, rb%, xmouse%, ymouse%
lm$ = INKEY$
lb = lb% + 2: IF lb = 2 THEN lb = 0
rb = rb% + 2: IF rb = 2 THEN rb = 0
x = xmouse% / 8 + 1
y = ymouse% / 8 + 1
LOCATE 1, 32
COLOR 7, 0
PRINT "X"; x; "Y"; y; "LB"; lb; "RB"; rb; "Page:"; page
IF lb = 1 THEN IF rb = 0 THEN IF y = 3 THEN IF x = 66 THEN GOTO abouter
IF lb = 1 THEN IF rb = 0 THEN IF y = 4 THEN IF x = 66 THEN GOTO helper
IF lb = 1 THEN IF rb = 0 THEN IF y = 6 THEN IF x = 66 THEN GOTO start
IF lm$ = "a" THEN GOTO abouter
IF lm$ = "A" THEN GOTO abouter
IF lm$ = "H" THEN GOTO helper
IF lm$ = "h" THEN GOTO helper
IF lm$ = "C" THEN GOTO start
IF lm$ = "c" THEN GOTO start
GOTO doloop9
abouter:
CLS
COLOR 15, 0
PRINT "Wolf Edit"
PRINT "Version " + versionnumber$
PRINT "For IBM/Compatible machines"
PRINT "DOS | Windows 3.1 | Windows 95"
PRINT "(c)WolfWare Interactive, Inc."
PRINT
PRINT "WolfWare Interactive, Inc. is owned by J.T. Olds"
PRINT "and operated by J.T. Olds and Alex Mark"
PRINT "You can E-Mail JT at JTOlds@Yahoo.com or"
PRINT "JTTech@Technologist.com"
PRINT "You can E-Mail Alex at Aeris72@Yahoo.com"
PRINT
PRINT "Wolf Edit v. " + versionnumber$ + " is freeware. Donations"
PRINT "ARE accepted. If you want to donate, send check or"
PRINT "money to:"
PRINT
PRINT "JTOlds"
PRINT "10088 Stonewall Ct."
PRINT "Sandy, UT 84092"
PRINT "USA"
PRINT
SLEEP
GOTO start
helper:
CLS
COLOR 15, 0
PRINT "General:"
PRINT "WOLF EDIT can create new, it can save, open,"
PRINT "run PaintPro, exit and go to the DOS Shell."
PRINT
PRINT "If you have a question, please e-mail me at"
PRINT "JTOlds@Yahoo.com and ask your question. It"
PRINT "may even be in a next release if it's good."
SLEEP
GOTO start
pageprinter:
temp = page - 1
temp2 = temp * 22
FOR q = 2 TO 23
LOCATE q, 1
PRINT word$(q + temp2)
NEXT q
GOTO start2

SUB MouseDriver (AX%, bx%, CX%, DX%)
  DEF SEG = VARSEG(mouse$)
  mouse% = SADD(mouse$)
  CALL Absolute(AX%, bx%, CX%, DX%, mouse%)
END SUB

SUB MouseHide
 AX% = 2
 MouseDriver AX%, 0, 0, 0
END SUB

FUNCTION MouseInit%
  AX% = 0
  MouseDriver AX%, 0, 0, 0
  MouseInit% = AX%

END FUNCTION

SUB MousePut
  AX% = 4
  CX% = x%
  DX% = y%
  MouseDriver AX%, 0, CX%, DX%
END SUB

SUB mouseshow
  AX% = 1
  MouseDriver AX%, 0, 0, 0
END SUB

SUB mousestatus (lb%, rb%, xmouse%, ymouse%)
  AX% = 3
  MouseDriver AX%, bx%, CX%, DX%
  lb% = ((bx% AND 1) <> 0)
  rb% = ((bx% AND 2) <> 0)
  xmouse% = CX%
  ymouse% = DX%
END SUB

SUB paintpro
DIM a(22, 80)
version$ = "4.0"
g = 15
wanted$ = CHR$(219)
CLS
LOCATE 12, 15
COLOR 4
PRINT "PaintPro v. " + version$ + " ";
COLOR 2
PRINT "(C) WolfWare Interactive, Inc."
SLEEP
clearer:
FOR i = 1 TO 22
FOR j = 1 TO 80
a(i, j) = 0 * 256 + ASC("Û")
NEXT j
NEXT i
CLS
COLOR 10
LOCATE 23, 1: PRINT " ile     dit    Finish  roject     elp                                          "
COLOR 12
LOCATE 23, 1: PRINT "F"
LOCATE 23, 9: PRINT "E"
LOCATE 23, 24: PRINT "P"
LOCATE 23, 35: PRINT "H"
start4:
mousestatus lb%, rb%, xmouse%, ymouse%
lm$ = INKEY$
IF lb% = -1 THEN GOSUB nextline
IF rb% = -1 THEN GOSUB nextline2
IF lm$ = "F" THEN GOTO file
IF lm$ = "f" THEN GOTO file
IF lm$ = "E" THEN GOTO edit
IF lm$ = "e" THEN GOTO edit
IF lm$ = "P" THEN GOTO finish
IF lm$ = "p" THEN GOTO finish
IF lm$ = "r" THEN GOTO recover
IF lm$ = "R" THEN GOTO recover
IF lm$ = "h" THEN GOTO help
IF lm$ = "H" THEN GOTO help
GOTO start4
nextline:
mousestatus lb%, rb%, xmouse%, ymouse%
xm% = xmouse% / 8 + 1
ym% = ymouse% / 8 + 1
x = xm%
y = ym%
IF y > 22 THEN RETURN
COLOR g
LOCATE y, x: PRINT wanted$
wantedtemp$ = wanted$
WHILE LEN(wantedtemp$) > 0 AND x <= 80
a(y, x) = g * 256 + ASC(wantedtemp$)
wantedtemp$ = RIGHT$(wantedtemp$, LEN(wantedtemp$) - 1)
x = x + 1
WEND
COLOR 10
LOCATE 23, 1: PRINT " ile     dit    Finish  roject     elp                                          "
COLOR 12
LOCATE 23, 1: PRINT "F"
LOCATE 23, 9: PRINT "E"
LOCATE 23, 24: PRINT "P"
LOCATE 23, 35: PRINT "H"
RETURN
file:
CLS
COLOR 15
PRINT "New(1)? Save(2)? Open(3)? Exit(4)? Cancel(5)?"
PRINT ">"
doloop4:
C$ = INKEY$
IF C$ = "4" THEN GOTO endsub
IF C$ = "2" THEN GOTO saver
IF C$ = "5" THEN GOTO recover
IF C$ = "3" THEN GOTO opener2
IF C$ = "1" THEN GOTO clearer
GOTO doloop4
nextline2:
mousestatus lb%, rb%, xmouse%, ymouse%
xm% = xmouse% / 8 + 1
ym% = ymouse% / 8 + 1
x = xm%
y = ym%
IF y > 22 THEN RETURN
COLOR g
LOCATE y, x: COLOR 0, 0: PRINT CHR$(219)
a(y, x) = 0 * 256 + ASC("Û")
COLOR 10
LOCATE 23, 1: PRINT " ile     dit    Finish  roject     elp                                          "
COLOR 12
LOCATE 23, 35: PRINT "H"
LOCATE 23, 1: PRINT "F"
LOCATE 23, 9: PRINT "E"
LOCATE 23, 24: PRINT "P"
RETURN
recover:
COLOR 10
LOCATE 23, 1: PRINT " ile     dit    Finish  roject     elp                                          "
COLOR 12
LOCATE 23, 1: PRINT "F"
LOCATE 23, 35: PRINT "H"
LOCATE 23, 9: PRINT "E"
LOCATE 23, 24: PRINT "P"
FOR i = 1 TO 22
FOR j = 1 TO 80
LOCATE i, j
COLOR FIX(a(i, j) / 256)
PRINT CHR$(a(i, j) MOD 256)
NEXT j
NEXT i
GOTO start4
edit:
CLS
COLOR 15
PRINT "Change Color(1)? Change Character(2)? Fill(3)? Insert text(4)?"
PRINT "Cancel(5)?"
PRINT ">"
doloop3:
C$ = INKEY$
IF C$ = "1" THEN GOTO ccolor
IF C$ = "2" THEN GOTO cdesign
IF C$ = "5" THEN GOTO recover
IF C$ = "3" THEN GOTO fillermain
IF C$ = "4" THEN GOTO texter22
GOTO doloop3
ccolor:
COLOR 15
PRINT "Do you want (f)lashing colors or (r)egular? <F/R>"
dolooper:
lm$ = INKEY$
IF lm$ = "F" THEN GOTO flash
IF lm$ = "f" THEN GOTO flash
IF lm$ = "R" THEN GOTO reg
IF lm$ = "r" THEN GOTO reg
GOTO dolooper
reg:
PRINT "Which color?"
FOR i = 1 TO 15
COLOR i
PRINT CHR$(219), "("; i; ")"
NEXT i
COLOR 15
INPUT "Color here>", g
CLS
GOTO recover
flash:
PRINT "Which color?"
FOR i = 1 TO 15
COLOR i
PRINT CHR$(219), "("; i; ")"
NEXT i
COLOR 15
INPUT "Color here>", l
g = l + 16
CLS
GOTO recover
cdesign:
COLOR 15
PRINT "Which character?"
COLOR 15
FOR i = 14 TO 100
IF i = 25 THEN GOTO nexterj
IF i = 29 THEN GOTO nexterj
IF i = 30 THEN GOTO nexterj
IF i = 28 THEN GOTO nexterj
IF i = 31 THEN GOTO nexterj
IF i = 32 THEN GOTO nexterj
PRINT CHR$(i); " ("; i; ")",
nexterj:
NEXT i
PRINT "Press ENTER to continue..."
INPUT "", C
FOR i = 100 TO 200
PRINT CHR$(i); " ("; i; ")",
NEXT i
PRINT "Press ENTER to continue..."
INPUT "", C
FOR i = 200 TO 254
PRINT CHR$(i); " ("; i; ")",
NEXT i
PRINT "If you want a specific character, type 999 here."
INPUT "Please type the number of the character here>", C
IF C = 999 THEN GOSUB texter99 ELSE wanted$ = CHR$(C)
CLS
GOTO recover
saver:
CLS
COLOR 15
PRINT "What is the name and location of the file you want to save?"
PRINT "[drive]:\[folder(s)]\[nameoffile].ppf"
PRINT "Example: c:\myfiles\projects\picture1.ppf"
INPUT ">", name$
CLS
OPEN name$ FOR OUTPUT AS #1
FOR i = 1 TO 22
FOR j = 1 TO 80
PRINT #1, a(i, j)
NEXT j
NEXT i
CLOSE #1
GOTO recover
opener2:
CLS
COLOR 15
PRINT "What is the name and location of the file you want to open?"
PRINT "[drive]:\[folder(s)]\[nameoffile].ppf"
PRINT "Example: c:\myfiles\projects\picture1.ppf"
INPUT ">", name$
OPEN name$ FOR INPUT AS #1
FOR i = 1 TO 22
FOR j = 1 TO 80
INPUT #1, a(i, j)
NEXT j
NEXT i
CLOSE #1
GOTO recover
finish:
CLS
COLOR 15
PRINT "Are you sure that you want to save the picture to QBasic source code?"
PRINT "<Y/N>"
looper1:
lm$ = INKEY$
IF lm$ = "y" THEN GOTO goon
IF lm$ = "Y" THEN GOTO goon
IF lm$ = "n" THEN GOTO recover
IF lm$ = "N" THEN GOTO recover
GOTO looper1
goon:
PRINT "What is the name and location of the file you want to save?"
PRINT "[drive]:\[folder(s)]\[nameoffile].[extension]"
PRINT "Example: c:\qbasic\projects\picture1.bas"
INPUT ">", place$
PRINT "What do you want to name this picture?"
PRINT "Example: Smile (one word please and"
PRINT "not to long)"
INPUT ">", named$
OPEN place$ FOR OUTPUT AS #1
PRINT #1, "CLS"
PRINT #1, "DIM a(22,80)"
PRINT #1, named$ + ":"
FOR i = 1 TO 22
FOR j = 0 TO 7
PRINT #1, "DATA ";
FOR k = 1 TO 9
PRINT #1, a(i, j * 10 + k); ", ";
NEXT k
PRINT #1, a(i, j * 10 + 10)
NEXT j
NEXT i
PRINT #1, "RESTORE " + named$
PRINT #1, "FOR i = 1 TO 22"
PRINT #1, "FOR j = 1 TO 80"
PRINT #1, "READ a(i,j)"
PRINT #1, "NEXT j"
PRINT #1, "NEXT i"
PRINT #1, "FOR i = 1 TO 22"
PRINT #1, "FOR j = 1 TO 80"
PRINT #1, "LOCATE i,j"
PRINT #1, "COLOR FIX(a(i,j) / 256)"
PRINT #1, "PRINT CHR$(a(i,j) MOD 256)"
PRINT #1, "NEXT j"
PRINT #1, "NEXT i"
PRINT #1, "FOR i = 1 TO 22"
PRINT #1, "FOR j = 1 TO 80"
PRINT #1, "a(i, j) = 15 * 256 + 32"
PRINT #1, "NEXT j"
PRINT #1, "NEXT i"
CLOSE #1
GOTO recover
help:
CLS
COLOR 15
PRINT "Program Info(1), Question & Answer(2), Trouble-Shooting(3),"
PRINT "General Usage(4), or Cancel(5)"
PRINT ">"
doloop5:
C$ = INKEY$
IF C$ = "1" THEN GOTO about
IF C$ = "2" THEN GOTO qa
IF C$ = "5" THEN GOTO recover
IF C$ = "3" THEN GOTO trouble
IF C$ = "4" THEN GOTO general
GOTO doloop5
about:
CLS
COLOR 15
PRINT "PaintPro"
PRINT "Version " + version$
PRINT "WOLF EDIT Version"
PRINT "For IBM/Compatible machines"
PRINT "DOS | Windows 3.1 | Windows 95"
PRINT "(c)WolfWare Interactive, Inc."
PRINT
PRINT "WolfWare Interactive, Inc. is owned by J.T. Olds"
PRINT "and operated by J.T. Olds and Alex Mark"
PRINT "You can E-Mail JT at JTOlds@Yahoo.com or"
PRINT "JTTech@Technologist.com"
PRINT "You can E-Mail Alex at Aeris72@Yahoo.com"
PRINT
PRINT "PaintPro v. " + version$ + " is freeware. Donations ARE accepted."
PRINT "If you want to donate, send check or money to:"
PRINT
PRINT "JTOlds"
PRINT "10088 Stonewall Ct."
PRINT "Sandy, UT 84092"
PRINT "USA"
PRINT
SLEEP
GOTO recover
general:
CLS
COLOR 15
PRINT "GENERAL USAGE"
PRINT "-----------------------------------------------"
PRINT "UNIQUE CHARACTERISTICS:"
PRINT "P button: Goes to a menu that lets you create a"
PRINT "          QBasic source code file that runs the"
PRINT "          Picture."
PRINT "THE EDITOR:"
PRINT "Left click: make colored character appear."
PRINT "Right click: erase colored character."
PRINT "F button: File menu"
PRINT "E button: Edit menu"
PRINT "H button: Help menu"
PRINT "P button: puts picture into QB source code"
PRINT "FILE MENU:"
PRINT "New: starts new file"
PRINT "Save: saves file"
PRINT "Open: opens file"
PRINT "Exit: exits program"
PRINT "Cancel: returns to editor"
PRINT "EDIT MENU:"
PRINT "Change color: changes color of character"
PRINT "Change character: changes character to use"
PRINT "Fill: fills screen with specified colored"
PRINT "      character"
PRINT "Insert text: Inserts text to where you click"
PRINT "Cancel: returns to editor"
SLEEP
GOTO recover
qa:
CLS
COLOR 15
PRINT "QUESTION AND ANSWER"
PRINT "-----------------------------------------------------"
PRINT "Question: I type in c:\myfiles\person.ppf"
PRINT "          and it doesn't work."
PRINT "Answer: If you don't already have the folder"
PRINT "        MYFILES, then it won't work. You need"
PRINT "        the folder MYFILES."
PRINT "Question: I type in c:\dos\mycoolprogram.bas"
PRINT "          and it doesn't work. I do have the"
PRINT "          folder DOS."
PRINT "Answer: If you have more than 8 characters in"
PRINT "        the file name,(MYCOOLPROGRAM), it "
PRINT "        won't work. Try lowering the number of"
PRINT "        characters."
PRINT "Question: I don't have QBasic. Where can I get"
PRINT "          it?"
PRINT "Answer: You can get it at:"
PRINT "http://www.microsoft.com/windows/download/olddos.exe"
PRINT "        It comes with a hord of old DOS"
PRINT "        utilitys but all you need is the stuff"
PRINT "        that starts with QBASIC. You can also"
PRINT "Press ENTER to go on..."
SLEEP
CLS
COLOR 15
PRINT "        get QBASIC compilers and code from:"
PRINT "        www.QBasic.com"
PRINT "Question: I have a question that I need the"
PRINT "          answer for. How can I find out the "
PRINT "          answer?"
PRINT "Answer: You can E-Mail me at JTOlds@Yahoo.com"
PRINT "        and ask me your question through"
PRINT "        E-Mail. I will try to honestly"
PRINT "        answer your question and reply."
SLEEP
GOTO recover
trouble:
CLS
COLOR 15
PRINT "TROUBLE-SHOOTING"
PRINT "------------------------------------------------------"
PRINT "Trouble: I see File, Edit, Finish Project, and Help"
PRINT "         all over the screen."
PRINT "Possible cause: You moved your mouse down to far and"
PRINT "                you put a character out of range. "
PRINT "                This shouldn't happen, however."
PRINT "Possible fix: Press R"
PRINT "Trouble: The screen is distorted and it quits with"
PRINT "         errors all the time."
PRINT "Possible cause: You have the Windows 95 dos-box set"
PRINT "                with a non-compatible length."
PRINT "Possible fix: Run in DOS size (dos-box to DOS size "
PRINT "              is ALT+ENTER) or in DOS mode."
PRINT
PRINT "Have another problem? E-Mail me on what you should"
PRINT "do at JTOlds@Yahoo.com."
SLEEP
GOTO recover
fillermain:
CLS
COLOR 15
PRINT "If you fill, you will get a screen coated in"
PRINT "your to-be specified colored character."
PRINT "All your unsaved data will be erased."
PRINT "Are you sure you want to fill? <Y/N>"
dolooper945j:
temp$ = INKEY$
IF temp$ = "Y" THEN GOTO fillerdata
IF temp$ = "y" THEN GOTO fillerdata
IF temp$ = "N" THEN GOTO recover
IF temp$ = "n" THEN GOTO recover
GOTO dolooper945j
fillerdata:
CLS
COLOR 15
PRINT "Do you want (f)lashing colors or (r)egular? <F/R>"
dolooperlm945j:
lm$ = INKEY$
IF lm$ = "F" THEN GOTO flash2
IF lm$ = "f" THEN GOTO flash2
IF lm$ = "R" THEN GOTO reg2
IF lm$ = "r" THEN GOTO reg2
GOTO dolooperlm945j
reg2:
PRINT "Which color?"
FOR i = 1 TO 15
COLOR i
PRINT CHR$(219), "("; i; ")"
NEXT i
COLOR 15
INPUT "Color here>", g2
GOTO goonlm45j
flash2:
PRINT "Which color?"
FOR i = 1 TO 15
COLOR i
PRINT CHR$(219), "("; i; ")"
NEXT i
COLOR 15
INPUT "Color here>", l2
g2 = l2 + 16
goonlm45j:
COLOR 15
PRINT "Which character?"
COLOR 15
FOR i = 14 TO 100
IF i = 25 THEN GOTO nexter22
IF i = 29 THEN GOTO nexter22
IF i = 30 THEN GOTO nexter22
IF i = 28 THEN GOTO nexter22
IF i = 31 THEN GOTO nexter22
IF i = 32 THEN GOTO nexter22
PRINT CHR$(i); " ("; i; ")",
nexter22:
NEXT i
PRINT "Press ENTER to continue..."
INPUT "", temp
FOR i = 100 TO 200
PRINT CHR$(i); " ("; i; ")",
NEXT i
PRINT "Press ENTER to continue..."
INPUT "", temp
FOR i = 200 TO 254
PRINT CHR$(i); " ("; i; ")",
NEXT i
INPUT "Please type the number of the character here>", wanted2
wanted2$ = CHR$(wanted2)
FOR i = 1 TO 22
FOR j = 1 TO 80
a(i, j) = g2 * 256 + wanted2
NEXT j
NEXT i
CLS
GOTO recover
texter22:
INPUT "Input text >", wanted$
CLS
GOTO recover
texter99:
INPUT "Input character >", wanted$
RETURN
endsub:
END SUB

