start:
CLS
sca$ = "beefcc"
'PLAY sca$
SCREEN 8
COLOR 10
PRINT
PRINT " ****"
PRINT " ****"
PRINT "                 Welcome to StartPro 3.0 No Sound Edition (TM)"
COLOR 12
PRINT "                                By JT Olds"
PRINT " ****"
'PLAY sca$
COLOR 10
PRINT " ****              Do you want to (1) use WordPad, (2) use"
COLOR 12
PRINT "                   Qbasic, (3) compile a BAS file, (4) use"
COLOR 10
PRINT "                    MSPaint, (5) use X-Plore, (6) run a"
COLOR 12
PRINT " ****                 personalized screen saver, (7)"
COLOR 10
PRINT " ****                run a coding program, (8) run a"
COLOR 12
PRINT "                     Sonic-Adventure program, (9) run"
COLOR 10
PRINT "                   Musicalc, (10) restart and clear screen"
COLOR 12
PRINT " ****                          or (11) quit."
PRINT " ****"
PRINT
'PLAY sca$
PRINT
COLOR 10
sca2$ = "beefcagcc"
PRINT
PRINT
PRINT
PRINT "*-----*************************************************************************"
COLOR 12
PRINT "*START*************************************************************************"
COLOR 10
PRINT "*-----*************************************************************************"
COLOR 12
'PLAY sca2$
INPUT ">", choice
IF choice = 1 THEN GOTO wp
IF choice = 2 THEN GOTO qb
IF choice = 4 THEN GOTO msp
IF choice = 3 THEN GOTO qbc
IF choice = 5 THEN GOTO xpl
IF choice = 11 THEN GOTO ender
IF choice = 6 THEN GOTO ss
IF choice = 7 THEN GOTO qbc2
IF choice = 8 THEN GOTO adv
IF choice = 9 THEN GOTO mucalc
IF choice = 10 THEN GOTO start

ender:
CLS
COLOR 12
PRINT
PRINT
PRINT
'PLAY sca2$
PRINT
PRINT
PRINT "              BBBBB           YY    YY            EEEEEEEE         !!"
COLOR 10
PRINT "              BB  BB           YY  YY             EE               !!"
COLOR 12
PRINT "              BB   BB           YYYY              EE               !!"
COLOR 10
PRINT "              BBBBBBB            YY               EEEEEEEE         !!"
COLOR 12
PRINT "              BB   BB            YY               EE               !!"
COLOR 10
PRINT "              BB  BB             YY               EE               "
COLOR 12
PRINT "              BBBBB              YY               EEEEEEEE         !!"
COLOR 10
FOR i = 1 TO 10000: NEXT i
CLS
PRINT "DONE"
COLOR 12
END

qbc:
'PLAY sca2$
SHELL "start /max /w a:\startpro\qbasiccompiler.exe"
GOTO start2

wp:
'PLAY sca2$
SHELL "start /max /w c:\progra~1\accessories\wordpad.exe"
GOTO start2

qb:
'PLAY sca2$
SHELL "start /max /w a:\startpro\qbasic.exe"
GOTO start2

msp:
'PLAY sca2$
SHELL "start /max /w c:\progra~1\accessories\mspaint.exe"
GOTO start2

xpl:
'PLAY sca2$
SHELL "start /w a:\startpro\X-plore\"
GOTO start2

ss:
'PLAY sca2$
SHELL "start /max /w a:\startpro\protek.exe"
GOTO start2

qbc2:
'PLAY sca2$
SHELL "start /max /w a:\startpro\qbcode30.exe"
GOTO start2

adv:
'PLAY sca2$
SHELL "start /max /w a:\startpro\adventur.exe"
GOTO start2

mucalc:
'PLAY sca2$
SHELL "start /max /w a:\startpro\musicalc.exe"
GOTO start2

start2:
CLS
'sca$ = "beefcc"
'AY sca$
SCREEN 8
COLOR 10
PRINT
PRINT " ****"
PRINT " ****"
PRINT "                        Welcome to StartPro 3.0 (TM)"
COLOR 12
PRINT "                                By JT Olds"
PRINT " ****"
'PLAY sca$
COLOR 10
PRINT " ****              Do you want to (1) use WordPad, (2) use"
COLOR 12
PRINT "                   Qbasic, (3) compile a BAS file, (4) use"
COLOR 10
PRINT "                    MSPaint, (5) use X-Plore, (6) run a"
COLOR 12
PRINT " ****                 personalized screen saver, (7)"
COLOR 10
PRINT " ****                run a coding program, (8) run a"
COLOR 12
PRINT "                     Sonic-Adventure program, (9) run"
COLOR 10
PRINT "                   Musicalc, (10) restart and clear screen"
COLOR 12
PRINT " ****                          or (11) quit."
PRINT " ****"
PRINT
'PLAY sca$
PRINT
COLOR 10
sca2$ = "beefcagcc"
PRINT
PRINT
PRINT
PRINT "*-----*************************************************************************"
COLOR 12
PRINT "*START*************************************************************************"
COLOR 10
PRINT "*-----*************************************************************************"
COLOR 12
'PLAY sca2$
INPUT ">", choice
IF choice = 1 THEN GOTO wp
IF choice = 2 THEN GOTO qb
IF choice = 4 THEN GOTO msp
IF choice = 3 THEN GOTO qbc
IF choice = 5 THEN GOTO xpl
IF choice = 11 THEN GOTO ender
IF choice = 6 THEN GOTO ss
IF choice = 7 THEN GOTO qbc2
IF choice = 8 THEN GOTO adv
IF choice = 9 THEN GOTO mucalc
IF choice = 10 THEN GOTO start

