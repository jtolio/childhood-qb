DECLARE FUNCTION MouseInit% ()
DECLARE SUB MouseDriver (AX%, bx%, CX%, DX%)
DECLARE SUB MouseShow ()
DECLARE SUB MouseStatus (lb%, rb%, xmouse%, ymouse%)
DIM SHARED Mouse$
DIM SHARED x
DIM SHARED y
DIM SHARED lb
DIM SHARED rb
RESTORE
Mouse$ = SPACE$(57)
FOR I% = 1 TO 57
READ A$
H$ = CHR$(VAL("&H" + A$))
MID$(Mouse$, I%, 1) = H$
NEXT I%
DATA 55,89,E5,8B,5E,0C,8B,07,50,8B,5E,0A,8B,07,50,8B
DATA 5E,08,8B,0F,8B,5E,06,8B,17,5B,58,1E,07,CD,33,53
DATA 8B,5E,0C,89,07,58,8B,5E,0A,89,07,8B,5E,08,89,0F
DATA 8B,5E,06,89,17,5D,CA,08,00
MouseShow
start:
MouseStatus lb%, rb%, xmouse%, ymouse%
lb = lb% + 2
rb = rb% + 2
x = xmouse% / 8 + 1
y = ymouse% / 8 + 1
GOTO start

SUB MouseDriver (AX%, bx%, CX%, DX%)
  DEF SEG = VARSEG(Mouse$)
  Mouse% = SADD(Mouse$)
  CALL Absolute(AX%, bx%, CX%, DX%, Mouse%)
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

SUB MouseShow
  AX% = 1
  MouseDriver AX%, 0, 0, 0
END SUB

SUB MouseStatus (lb%, rb%, xmouse%, ymouse%)
  AX% = 3
  MouseDriver AX%, bx%, CX%, DX%
  lb% = ((bx% AND 1) <> 0)
  rb% = ((bx% AND 2) <> 0)
  xmouse% = CX%
  ymouse% = DX%
END SUB

