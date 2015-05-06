DECLARE SUB MouseDriver (AX%, bx%, CX%, DX%)
DECLARE FUNCTION MouseInit% ()
DECLARE SUB mouseshow ()
DECLARE SUB mousestatus (lb%, RB%, Xmouse%, Ymouse%)
DECLARE SUB STICKS (Joyx%, JOYY%, BUT1%, BUt2%, BUT3%)
DIM SHARED mouse$
SCREEN 8
COLOR 9
RESTORE
mouse$ = SPACE$(57)
FOR I% = 1 TO 57
  READ A$
  H$ = CHR$(VAL("&H" + A$))
  MID$(mouse$, I%, 1) = H$
NEXT I%
DATA 55,89,E5,8B,5E,0C,8B,07,50,8B,5E,0A,8B,07,50,8B
DATA 5E,08,8B,0F,8B,5E,06,8B,17,5B,58,1E,07,CD,33,53
DATA 8B,5E,0C,89,07,58,8B,5E,0A,89,07,8B,5E,08,89,0F
DATA 8B,5E,06,89,17,5D,CA,08,00
CLS

MS% = MouseInit%
IF NOT MS% THEN
  PRINT "Mouse not found": LET AMOUSE$ = "NO":


END IF
PRINT "Mouse found and initialized": LET AMOUSE$ = "YES"
mouseshow
g = 0
DO
lm$ = INKEY$
STICKS Joyx%, JOYY%, BUT1%, BUt2%, BUT3%
mousestatus lb%, RB%, Xmouse%, Ymouse%
LOCATE 5, 1
PRINT "Mouse:        LB:"; lb%, "RB:"; RB%, "X:"; Xmouse%, "Y:"; Ymouse%
PRINT
PRINT
PRINT
LOCATE 10, 1: PRINT ">"
LOCATE 10, 2 + g: PRINT lm$
IF lm$ > CHR$(0) THEN g = g + 1
LOOP

SUB MouseDriver (AX%, bx%, CX%, DX%)
  DEF SEG = VARSEG(mouse$)
  mouse% = SADD(mouse$)
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
  CX% = X%
  DX% = Y%
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

SUB STICKS (Joyx%, JOYY%, BUT1%, BUt2%, BUT3%)
Joyx% = STICK(0)
JOYY% = STICK(1)

BUT1% = STRIG(1)
BUt2% = STRIG(5)
BUT3% = STRIG(7)
END SUB

