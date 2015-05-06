DIM SHARED mouse$
RESTORE
mouse$ = SPACE$(57)
FOR i% = 1 TO 57
  READ A$
  H$ = CHR$(VAL("&H" + A$))
  MID$(mouse$, i%, 1) = H$
NEXT i%
DATA 55,89,E5,8B,5E,0C,8B,07,50,8B,5E,0A,8B,07,50,8B
DATA 5E,08,8B,0F,8B,5E,06,8B,17,5B,58,1E,07,CD,33,53
DATA 8B,5E,0C,89,07,58,8B,5E,0A,89,07,8B,5E,08,89,0F
DATA 8B,5E,06,89,17,5D,CA,08,00
CLS

  AX% = 0
  DEF SEG = VARSEG(mouse$)
  mouse% = SADD(mouse$)
  CALL Absolute(AX%, bx%, CX%, DX%, mouse%)

  MouseInit% = AX%
MS% = MouseInit%
IF NOT MS% THEN
LET AMOUSE$ = "NO":


END IF
LET AMOUSE$ = "YES"
  AX% = 1
  DEF SEG = VARSEG(mouse$)
  mouse% = SADD(mouse$)
  CALL Absolute(AX%, bx%, CX%, DX%, mouse%)

CLS
COLOR 10
PRINT
PRINT " ****"
PRINT " ****"
PRINT "                       Welcome to StartPro PLUS! (TM)"
COLOR 12
PRINT "                                By JT Olds"
PRINT " ****"
COLOR 10
PRINT " ****              Do you want to (Û) use WordPad, (Û) use"
COLOR 12
PRINT "                   Qbasic, (Û) compile a BAS file, (Û) use"
COLOR 10
PRINT "                    MSPaint, (Û) use X-Plore, (Û) run a"
COLOR 12
PRINT " ****                 personalized screen saver, (Û)"
COLOR 10
PRINT " ****                run a coding program, (Û) run a"
COLOR 12
PRINT "                     Sonic-Adventure program, (Û) run"
COLOR 10
PRINT "                      Musicalc, (Û) a word prosessor,"
COLOR 12
PRINT " ****                 (Û) Foriegn Mem, (Û) or quit"
PRINT " ****"
PRINT
PRINT
COLOR 10
PRINT
PRINT
PRINT
PRINT "*-----*************************************************************************"
COLOR 12
PRINT "*START*************************************************************************"
COLOR 10
PRINT "*-----*************************************************************************"
start:
DO
  AX% = 3
  DEF SEG = VARSEG(mouse$)
  mouse% = SADD(mouse$)
  CALL Absolute(AX%, bx%, CX%, DX%, mouse%)

  lb% = ((bx% AND 1) <> 0)
  RB% = ((bx% AND 2) <> 0)
  xmouse% = CX%
  ymouse% = DX%

LOCATE 5, 1
IF lb% = -1 THEN GOTO leftright
LOOP
'data
'lb%=left button=-1
'rb%=right button=-1
'xmouse%=right/left=by 8
'ymouse%=down/up=by 8
'screensaver=x376y64
'musicalc=x376y88
'samtype=x264y96
'foriegn=x184y104
'quit=x320y104
'xplore=x240y64
'coder=x400y72
'sonic=x352y80
leftright:
IF xmouse% = 280 THEN GOTO wordpass
IF xmouse% = 416 THEN GOTO msqb
IF xmouse% = 224 THEN GOTO qbco
IF xmouse% = 240 THEN GOTO xer
IF xmouse% = 376 THEN GOTO muscr
IF xmouse% = 264 THEN GOTO sam
IF xmouse% = 184 THEN GOTO fori
IF xmouse% = 320 THEN GOTO quiter
IF xmouse% = 400 THEN GOTO code
IF xmouse% = 352 THEN GOTO soni
GOTO start
waiter:
FOR i = 1 TO 1000: NEXT i
GOTO start
wordpass:
IF ymouse% = 48 THEN GOTO wordpad
GOTO start
msqb:
IF ymouse% = 56 THEN GOTO mspaint
IF ymouse% = 48 THEN GOTO qb
GOTO start
wordpad:
SHELL "start c:\progra~1\access~1\wordpad.exe"
END
mspaint:
SHELL "start c:\progra~1\access~1\mspaint.exe"
END
qb:
SHELL "qbasic.exe"
END
sammy:
SHELL "typec&s.exe"
END
qbcomp:
SHELL "firstbas.exe"
END
xplore:
SHELL "c:\windows\explorer.exe xplore\"
END
protek:
SHELL "protek.exe"
END
music:
SHELL "musicalc.exe"
END
foriegn:
SHELL "foriegn.exe"
END
coder:
SHELL "qbcode30.exe"
END
sonic:
SHELL "adventur.exe"
END
END
qbco:
IF ymouse% = 56 THEN GOTO qbcomp
GOTO start
xer:
IF ymouse% = 64 THEN GOTO xplore
GOTO start
muscr:
IF ymouse% = 64 THEN GOTO protek
IF ymouse% = 88 THEN GOTO music
GOTO start
sam:
IF ymouse% = 96 THEN GOTO sammy
GOTO start
fori:
IF ymouse% = 104 THEN GOTO foriegn
GOTO start
quiter:
IF ymouse% = 104 THEN END
GOTO start
code:
IF ymouse% = 72 THEN GOTO coder
GOTO start
soni:
IF ymouse% = 80 THEN GOTO sonic
GOTO start

