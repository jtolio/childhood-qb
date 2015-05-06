DECLARE SUB MouseDriver (AX%, bx%, CX%, DX%)
DECLARE FUNCTION MouseInit% ()
DECLARE SUB mouseshow ()
DECLARE SUB mousestatus (lb%, RB%, Xmouse%, Ymouse%)
DIM SHARED mouse$
DIM a(22, 80)
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
g = 15
wanted$ = CHR$(219)
version$ = "3.0"
picture1:
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2267
DATA  2267 ,  2267 ,  2267 ,  475 ,  475 ,  475 ,  475 ,  475 ,  2267 ,  2267
DATA  2267 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  2267 ,  2267 ,  2267 ,  2267 ,  475 ,  475 ,  475 ,  2267 ,  2267 ,  2267
DATA  2267 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  4059 ,  4059
DATA  4059 ,  4059 ,  4059 ,  219 ,  219 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  219 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  4059 ,  4059 ,  4059 ,  3872
DATA  3872 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059
DATA  3872 ,  3872 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059
DATA  4059 ,  4059 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  4059 ,  4059
DATA  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  731 ,  731 ,  4059 ,  4059 ,  4059
DATA  4059 ,  4059 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  4059 ,  4059 ,  4059 ,  4059
DATA  4059 ,  4059 ,  731 ,  731 ,  731 ,  731 ,  731 ,  731 ,  731 ,  4059
DATA  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059
DATA  4059 ,  731 ,  731 ,  731 ,  1243 ,  731 ,  731 ,  731 ,  731 ,  731
DATA  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  731 ,  731 ,  731
DATA  731 ,  731 ,  731 ,  731 ,  1243 ,  1243 ,  1243 ,  1243 ,  731 ,  731
DATA  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059
DATA  1243 ,  1243 ,  1243 ,  731 ,  731 ,  731 ,  731 ,  1243 ,  1243 ,  4059
DATA  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059
DATA  4059 ,  731 ,  731 ,  731 ,  731 ,  1243 ,  1243 ,  1243 ,  4059 ,  4059
DATA  4059 ,  4059 ,  4059 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  4059 ,  4059 ,  4059
DATA  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  731 ,  731 ,  4059 ,  4059 ,  4059
DATA  4059 ,  4059 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  4059 ,  4059
DATA  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  4059 ,  4059
DATA  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  4059
DATA  4059 ,  4059 ,  4059 ,  4059 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
RESTORE picture1
FOR i = 1 TO 22
FOR j = 1 TO 80
READ a(i, j)
NEXT j
NEXT i
FOR i = 1 TO 22
FOR j = 1 TO 80
LOCATE i, j
COLOR FIX(a(i, j) / 256)
PRINT CHR$(a(i, j) MOD 256)
NEXT j
NEXT i
COLOR 15
LOCATE 22, 12: PRINT "PaintPro v. " + version$ + "   (c)WolfWare Interactive '98"
SLEEP
clearer:
FOR i = 1 TO 22
FOR j = 1 TO 80
a(i, j) = g * 256 + 32
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
start:
mousestatus lb%, RB%, Xmouse%, Ymouse%
lm$ = INKEY$
IF lb% = -1 THEN GOSUB nextline
IF RB% = -1 THEN GOSUB nextline2
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
GOTO start
nextline:
mousestatus lb%, RB%, Xmouse%, Ymouse%
xm% = Xmouse% / 8 + 1
ym% = Ymouse% / 8 + 1
x = xm%
y = ym%
IF y > 22 THEN RETURN
COLOR g
LOCATE y, x: PRINT wanted$
a(y, x) = g * 256 + ASC(wanted$)
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
doloop2:
c$ = INKEY$
IF c$ = "4" THEN END
IF c$ = "2" THEN GOTO saver
IF c$ = "5" THEN GOTO recover
IF c$ = "3" THEN GOTO opener
IF c$ = "1" THEN GOTO clearer
GOTO doloop2
nextline2:
mousestatus lb%, RB%, Xmouse%, Ymouse%
xm% = Xmouse% / 8 + 1
ym% = Ymouse% / 8 + 1
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
GOTO start
edit:
CLS
COLOR 15
PRINT "Change Color(1)? Change Character(2)? Cancel(3)?"
PRINT ">"
doloop3:
c$ = INKEY$
IF c$ = "1" THEN GOTO ccolor
IF c$ = "2" THEN GOTO cdesign
IF c$ = "3" THEN GOTO recover
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
IF i = 25 THEN GOTO nexter
IF i = 29 THEN GOTO nexter
IF i = 30 THEN GOTO nexter
IF i = 28 THEN GOTO nexter
IF i = 31 THEN GOTO nexter
IF i = 32 THEN GOTO nexter
PRINT CHR$(i); " ("; i; ")",
nexter:
NEXT i
PRINT "Press ENTER to continue..."
INPUT "", c
FOR i = 100 TO 200
PRINT CHR$(i); " ("; i; ")",
NEXT i
PRINT "Press ENTER to continue..."
INPUT "", c
FOR i = 200 TO 254
PRINT CHR$(i); " ("; i; ")",
NEXT i
INPUT "Please type the number of the character here>", c
wanted$ = CHR$(c)
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
opener:
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
doloop4:
c$ = INKEY$
IF c$ = "1" THEN GOTO about
IF c$ = "2" THEN GOTO qa
IF c$ = "5" THEN GOTO recover
IF c$ = "3" THEN GOTO trouble
IF c$ = "4" THEN GOTO general
GOTO doloop4
about:
CLS
COLOR 15
PRINT "PaintPro"
PRINT "Version " + version$
PRINT "For IBM/Compatible machines"
PRINT "DOS | Windows 3.1 | Windows 95"
PRINT "(c)WolfWare Interactive, Inc."
PRINT
PRINT
PRINT "WolfWare Interactive, Inc. is fully owned and"
PRINT "operated by J.T. Olds "
PRINT "You can E-Mail JT at JTOlds@Yahoo.com or"
PRINT "JTTech@Technologist.com"
PRINT
PRINT
PRINT "PaintPro v. " + version$ + " is freeware. Donations ARE accepted."
PRINT "If you want to donate, send check or money to:"
PRINT
PRINT "JTOlds"
PRINT "10088 Stonewall Ct."
PRINT "Sandy, UT 84092"
PRINT "USA"
PRINT
PRINT "Note: PLEASE do not be obliged to send money!"
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
PRINT "FILE MENU:"
PRINT "New: starts new file"
PRINT "Save: saves file"
PRINT "Open: opens file"
PRINT "Exit: exits program"
PRINT "Cancel: returns to editor"
PRINT "EDIT MENU:"
PRINT "Change color: changes color of character"
PRINT "Change character: changes character to use"
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
PRINT "Possible fix: Run in a small screen (big to small is "
PRINT "              ALT+ENTER) or in DOS mode."
PRINT
PRINT "Have another problem? E-Mail me on what you should"
PRINT "do at JTOlds@Yahoo.com."
SLEEP
GOTO recover

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

SUB mousestatus (lb%, RB%, Xmouse%, Ymouse%)
  AX% = 3
  MouseDriver AX%, bx%, CX%, DX%
  lb% = ((bx% AND 1) <> 0)
  RB% = ((bx% AND 2) <> 0)
  Xmouse% = CX%
  Ymouse% = DX%
END SUB

