CLS
PRINT "Welcome to GB97!"
start:
PRINT "Would you like to run a game(1), change configuration(2), or"
PRINT "exit(3)?"
doloop:
lm$ = INKEY$
IF lm$ = CHR$(49) THEN GOTO runer
IF lm$ = CHR$(50) THEN SHELL "start /w c:\emulate\config.exe": CLS : GOTO start
IF lm$ = CHR$(51) THEN END
GOTO doloop
runer:
PRINT "Which game would you like to run with GB97?"
PRINT "Example: dkl"
INPUT ">", where$
SHELL "start /w c:\emulate\gb97.exe c:\emulate\" + where$ + ".gb"
CLS
GOTO start

