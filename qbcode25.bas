DECLARE SUB MouseDriver (AX%, bx%, CX%, DX%)
DECLARE FUNCTION MouseInit% ()
DECLARE SUB mouseshow ()
DECLARE SUB mousestatus (lb%, rb%, Xmouse%, Ymouse%)
DIM a$(92)
DIM a2(23, 80)
DIM qbcintro(23, 80)
DIM SHARED mouse$
RESTORE
mouse$ = SPACE$(57)
FOR i% = 1 TO 57
READ a$
H$ = CHR$(VAL("&H" + a$))
MID$(mouse$, i%, 1) = H$
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
mouseshow
page = 1
versionnumber$ = "2.5"
GOTO qbcintro
start:
GOTO bluemenu
start2:
mousestatus lb%, rb%, Xmouse%, Ymouse%
lm$ = INKEY$
lb = lb% + 2: IF lb = 2 THEN lb = 0
rb = rb% + 2: IF rb = 2 THEN rb = 0
x = Xmouse% / 8 + 1
y = Ymouse% / 8 + 1
COLOR 7, 0
LOCATE 1, 32
PRINT "X"; x; "Y"; y; "LB"; lb; "RB"; rb
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
IF lb = 1 THEN IF x = 2 THEN IF y = 1 THEN GOTO filemenu
IF lb = 1 THEN IF x = 10 THEN IF y = 1 THEN GOTO editmenu
IF lb = 1 THEN IF x = 18 THEN IF y = 1 THEN GOTO runmenu
IF lb = 1 THEN IF x = 67 THEN IF y = 1 THEN GOTO helpmenu
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
GOTO pageer
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
mousestatus lb%, rb%, Xmouse%, Ymouse%
lm$ = INKEY$
lb = lb% + 2: IF lb = 2 THEN lb = 0
rb = rb% + 2: IF rb = 2 THEN rb = 0
x = Xmouse% / 8 + 1
y = Ymouse% / 8 + 1
LOCATE 1, 32
COLOR 7, 0
PRINT "X"; x; "Y"; y; "LB"; lb; "RB"; rb
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
FOR i = 1 TO 92
a$(i) = ""
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
FOR i = 2 TO 23
PRINT #1, a$(i)
NEXT i
FOR i = 2 TO 23
PRINT #1, a$(i + 22)
NEXT i
FOR i = 2 TO 23
PRINT #1, a$(i + 22 + 22)
NEXT i
FOR i = 2 TO 26
PRINT #1, a$(i + 22 + 22 + 22)
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
DO WHILE NOT EOF(1) AND i <= 92
INPUT #1, a$(i)
i = i + 1
LOOP
CLOSE #1
GOTO start
printer:
OPEN "LPT1" FOR OUTPUT AS #1
FOR i = 2 TO 23
PRINT #1, a$(i)
NEXT i
FOR i = 2 TO 23
PRINT #1, a$(i + 22)
NEXT i
FOR i = 2 TO 23
PRINT #1, a$(i + 22 + 22)
NEXT i
FOR i = 2 TO 26
PRINT #1, a$(i + 22 + 22 + 22)
NEXT i
CLOSE #1
GOTO start
pageer:
IF page = 1 THEN GOTO page1
IF page = 2 THEN GOTO page2
IF page = 3 THEN GOTO page3
IF page = 4 THEN GOTO page4
GOTO page1
page1:
FOR q = 2 TO 23
LOCATE q, 1
PRINT a$(q)
NEXT q
GOTO start2
page2:
FOR q = 2 TO 23
LOCATE q, 1
PRINT a$(q + 22)
NEXT q
GOTO start2
page3:
FOR q = 2 TO 23
LOCATE q, 1
PRINT a$(q + 22 + 22)
NEXT q
GOTO start2
page4:
FOR q = 2 TO 23
LOCATE q, 1
PRINT a$(q + 22 + 22 + 22)
NEXT q
GOTO start2
lines:
GOSUB lineinput
IF page = 1 THEN a$(y) = inputed$: GOTO start
IF page = 2 THEN a$(y + 22) = inputed$: GOTO start
IF page = 3 THEN a$(y + 45) = inputed$: GOTO start
IF page = 4 THEN a$(y + 68) = inputed$: GOTO start
a$(y) = inputed$
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
mousestatus lb%, rb%, Xmouse%, Ymouse%
lm$ = INKEY$
lb = lb% + 2: IF lb = 2 THEN lb = 0
rb = rb% + 2: IF rb = 2 THEN rb = 0
x = Xmouse% / 8 + 1
y = Ymouse% / 8 + 1
LOCATE 1, 32
COLOR 7, 0
PRINT "X"; x; "Y"; y; "LB"; lb; "RB"; rb
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
IF page = 4 THEN page = 1: GOTO start
page = page + 1
GOTO start
page:
COLOR 0, 7
LOCATE 8, 22: PRINT "ษอออออออออออออออออออออออออป"
LOCATE 9, 22: PRINT "บ What page? (1, 2, 3, 4) บ"
LOCATE 10, 22: PRINT "บ "
LOCATE 10, 47: PRINT " บ"
LOCATE 11, 22: PRINT "ศอออออออออออออออออออออออออผ"
COLOR 15, 0
LOCATE 10, 24: PRINT "                       "
LOCATE 10, 24: INPUT ">", page
GOTO start
previous:
IF page = 1 THEN page = 4: GOTO start
page = page - 1
GOTO start
runmenu:
COLOR 0, 7
LOCATE 2, 3: PRINT "ษออออออออออออออออออป"
LOCATE 3, 3: PRINT "บ Code             บ"
LOCATE 4, 3: PRINT "บ Decode           บ"
LOCATE 5, 3: PRINT "ฬออออออออออออออออออน"
LOCATE 6, 3: PRINT "บ Cancel           บ"
LOCATE 7, 3: PRINT "ศออออออออออออออออออผ"
COLOR 15, 7
LOCATE 3, 6: PRINT "o"
LOCATE 4, 5: PRINT "D"
LOCATE 6, 5: PRINT "C"
doloop8:
mousestatus lb%, rb%, Xmouse%, Ymouse%
lm$ = INKEY$
lb = lb% + 2: IF lb = 2 THEN lb = 0
rb = rb% + 2: IF rb = 2 THEN rb = 0
x = Xmouse% / 8 + 1
y = Ymouse% / 8 + 1
LOCATE 1, 32
COLOR 7, 0
PRINT "X"; x; "Y"; y; "LB"; lb; "RB"; rb
IF lm$ = "O" THEN GOTO coder
IF lm$ = "o" THEN GOTO coder
IF lm$ = "c" THEN GOTO start
IF lm$ = "C" THEN GOTO start
IF lm$ = "D" THEN GOTO decoder
IF lm$ = "d" THEN GOTO decoder
IF lb = 1 THEN IF rb = 0 THEN IF y = 3 THEN IF x = 6 THEN GOTO coder
IF lb = 1 THEN IF rb = 0 THEN IF y = 4 THEN IF x = 5 THEN GOTO decoder
IF lb = 1 THEN IF rb = 0 THEN IF y = 6 THEN IF x = 5 THEN GOTO start
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
mousestatus lb%, rb%, Xmouse%, Ymouse%
lm$ = INKEY$
lb = lb% + 2: IF lb = 2 THEN lb = 0
rb = rb% + 2: IF rb = 2 THEN rb = 0
x = Xmouse% / 8 + 1
y = Ymouse% / 8 + 1
LOCATE 1, 32
COLOR 7, 0
PRINT "X"; x; "Y"; y; "LB"; lb; "RB"; rb
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
PRINT "QBCode PLUS!"
PRINT "Version " + versionnumber$
PRINT "For IBM/Compatible machines"
PRINT "DOS | Windows 3.1 | Windows 95"
PRINT "(c)WolfWare Interactive, Inc."
PRINT
PRINT "WolfWare Interactive, Inc. is owned and"
PRINT "operated by J.T. Olds and Alex Mark"
PRINT "You can E-Mail JT at JTOlds@Yahoo.com or"
PRINT "JTTech@Technologist.com"
PRINT "You can E-Mail Alex at Aeris72@Yahoo.com"
PRINT
PRINT "QBCode PLUS! v. " + versionnumber$ + " is freeware. Donations"
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
PRINT "QBCode PLUS! can create new, it can save, open,"
PRINT "decode, code, exit and go to the DOS Shell."
PRINT
PRINT "QBCode PLUS! " + versionnumber$ + " is not compatible with QBCode"
PRINT "PLUS! 1.0. Because of this, you cannot code"
PRINT "your old codes. You should decode them"
PRINT "with QBCode PLUS! 1.0, save it, then open"
PRINT "it with QBCode PLUS! " + versionnumber$ + ", code it, then"
PRINT "save it."
PRINT
PRINT "If you have a question, please e-mail me at"
PRINT "JTOlds@Yahoo.com and ask your question. It"
PRINT "may even be in a next release if it's good."
SLEEP
GOTO start
coder:
GOSUB codeinput
GOTO codeloop
decoder:
GOSUB codeinput
GOTO decodeloop
decodeloop:
FOR temp = 1 TO 92
b$ = a$(temp)
IF codenumber = 1 THEN GOSUB decodea
IF codenumber = 2 THEN GOSUB decodeb
NEXT temp
GOTO start

codeloop:
FOR temp = 1 TO 92
b$ = a$(temp)
IF codenumber = 1 THEN GOSUB codea
IF codenumber = 2 THEN GOSUB codeb
NEXT temp
GOTO start

codea:
c$ = ""
slen = LEN(b$)
FOR i = 0 TO slen - 1
rlen = slen - i
rstr$ = RIGHT$(b$, rlen)
indexchar = ASC(rstr$)
IF indexchar < 32 OR indexchar > 126 THEN GOTO tempcodea
indexchar = indexchar + codeOffset + 9
IF indexchar > 126 THEN indexchar = indexchar - 126 + 32
tempcodea:
c$ = c$ + CHR$(indexchar)
NEXT i
a$(temp) = c$
RETURN

decodea:
c$ = ""
slen = LEN(b$)
FOR i = 0 TO slen - 1
rlen = slen - i
rstr$ = RIGHT$(b$, rlen)
indexchar = ASC(rstr$)
IF indexchar < 32 OR indexchar > 126 THEN GOTO tempdecodea
indexchar = indexchar - codeOffset - 9
IF indexchar < 32 THEN indexchar = indexchar + 126 - 32
tempdecodea:
c$ = c$ + CHR$(indexchar)
NEXT i
a$(temp) = c$
RETURN

codeb:
c$ = ""
slen = LEN(b$)
FOR i = 0 TO slen - 1
rlen = slen - i
rstr$ = RIGHT$(b$, rlen)
indexchar = ASC(rstr$)
IF indexchar < 32 OR indexchar > 126 THEN GOTO tempcodeb
indexchar = indexchar + codeOffset + 17
IF indexchar > 126 THEN indexchar = indexchar - 126 + 32
tempcodeb:
c$ = c$ + CHR$(indexchar)
NEXT i
a$(temp) = c$
RETURN
decodeb:
c$ = ""
slen = LEN(b$)
FOR i = 0 TO slen - 1
rlen = slen - i
rstr$ = RIGHT$(b$, rlen)
indexchar = ASC(rstr$)
IF indexchar < 32 OR indexchar > 126 THEN GOTO tempdecodeb
indexchar = indexchar - codeOffset - 17
IF indexchar < 32 THEN indexchar = indexchar + 126 - 32
tempdecodeb:
c$ = c$ + CHR$(indexchar)
NEXT i
a$(temp) = c$
RETURN
codeinput:
COLOR 0, 7
LOCATE 8, 24: PRINT "ษออออออออออออออออออป"
LOCATE 9, 24: PRINT "บ What code? (1/2) บ"
LOCATE 10, 24: PRINT "บ "
LOCATE 10, 42: PRINT " บ"
LOCATE 11, 24: PRINT "ศออออออออออออออออออผ"
COLOR 15, 0
LOCATE 10, 26: PRINT "                "
LOCATE 10, 26: INPUT ">", codenumber
COLOR 0, 7
LOCATE 8, 22: PRINT "ษออออออออออออออออออออออป"
LOCATE 9, 22: PRINT "บ What off-set? (0-50) บ"
LOCATE 10, 22: PRINT "บ "
LOCATE 10, 44: PRINT " บ"
LOCATE 11, 22: PRINT "ศออออออออออออออออออออออผ"
COLOR 15, 0
LOCATE 10, 24: PRINT "                    "
LOCATE 10, 24: INPUT ">", codeOffset
RETURN

qbcintro:
CLS
DATA  219 ,  3910 ,  1897 ,  1900 ,  1893 ,  1824 ,  1824 ,  1824 ,  1824 ,  3909
DATA  1892 ,  1897 ,  1908 ,  1824 ,  1824 ,  1824 ,  219 ,  3922 ,  1909 ,  1902
DATA  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219
DATA  219 ,  1880 ,  1850 ,  1824 ,  1840 ,  1824 ,  1881 ,  1850 ,  1824 ,  1840
DATA  1824 ,  1868 ,  1858 ,  1850 ,  1824 ,  1840 ,  1824 ,  1874 ,  1858 ,  1850
DATA  1824 ,  1840 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219
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
DATA  1243 ,  1243 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243
DATA  1243 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  1243 ,  1243
DATA  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  1243
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  1243 ,  1243 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  1243
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  475 ,  1243 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  1243
DATA  1243 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  475 ,  475 ,  1243
DATA  475 ,  475 ,  1243 ,  1243 ,  1243 ,  1243 ,  475 ,  1243 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243
DATA  1243 ,  1243 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475
DATA  475 ,  475 ,  475 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  1243 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  1243 ,  475 ,  1243
DATA  475 ,  475 ,  1243 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475
DATA  475 ,  475 ,  475 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  1243 ,  1243
DATA  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  475 ,  475
DATA  1243 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  1243
DATA  475 ,  475 ,  475 ,  1243 ,  1243 ,  1243 ,  1243 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  475
DATA  1243 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475
DATA  1243 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  1243 ,  1243 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475
DATA  475 ,  1243 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  1243 ,  1243 ,  475 ,  1243 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  475
DATA  475 ,  475 ,  475 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243
DATA  1243 ,  1243 ,  1243 ,  1243 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  1243 ,  1243 ,  1243 ,  1243 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  1243 ,  1243 ,  475 ,  475 ,  1243 ,  1243 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  1243
DATA  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  1243 ,  1243 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1243 ,  1243 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731
DATA  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  731 ,  731
DATA  731 ,  475 ,  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731
DATA  475 ,  475 ,  475 ,  731 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  475 ,  475 ,  475
DATA  731 ,  475 ,  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731
DATA  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  731 ,  731 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475
DATA  731 ,  475 ,  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  475
DATA  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  731 ,  731 ,  731
DATA  731 ,  475 ,  475 ,  475 ,  731 ,  731 ,  731 ,  731 ,  731 ,  731
DATA  475 ,  475 ,  475 ,  731 ,  731 ,  731 ,  731 ,  731 ,  731 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  475 ,  475 ,  731 ,  731 ,  731 ,  475 ,  475 ,  475
DATA  475 ,  475 ,  731 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
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
RESTORE qbcintro
FOR i = 1 TO 23
FOR j = 1 TO 80
READ qbcintro(i, j)
NEXT j
NEXT i
FOR i = 1 TO 23
FOR j = 1 TO 80
LOCATE i, j
COLOR FIX(qbcintro(i, j) / 256)
PRINT CHR$(qbcintro(i, j) MOD 256)
NEXT j
NEXT i
FOR i = 1 TO 23
FOR j = 1 TO 80
qbcintro(i, j) = 15 * 256 + 32
NEXT j
NEXT i
COLOR 15, 1
LOCATE 13, 45
PRINT "     QBCode PLUS! Version " + versionnumber$
LOCATE 14, 45
PRINT "(C) WolfWare Interactive, Inc. '98"
COLOR 7, 1
LOCATE 23, 55
PRINT "Press ENTER to continue..."
SLEEP
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
GOTO start

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

SUB mousestatus (lb%, rb%, Xmouse%, Ymouse%)
  AX% = 3
  MouseDriver AX%, bx%, CX%, DX%
  lb% = ((bx% AND 1) <> 0)
  rb% = ((bx% AND 2) <> 0)
  Xmouse% = CX%
  Ymouse% = DX%
END SUB

