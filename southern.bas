ver$ = "1.9er"
CLS
PRINT "Southern DOS " + ver$
PRINT
PRINT "Copywighted by WolfWare Interactive"
PRINT
PRINT "Ya'll reckon? <Yep/Nope>"
doloop1:
lm$ = INKEY$
IF UCASE$(lm$) = "Y" THEN GOTO GoOn1
IF UCASE$(lm$) = "N" THEN GOTO endy
GOTO doloop1
endy:
PRINT "See Ya'll!"
PRINT
END
GoOn1:
PRINT "Welcome to Southern DOS " + ver$ + "!"
PRINT "Ya'll type EXIT to exit. Kay?"
PRINT
start1:
SHELL "CD"
INPUT ">", toshell$
IF UCASE$(toshell$) = "EXIT" THEN GOTO endy
SHELL UCASE$(toshell$)
GOTO start1

