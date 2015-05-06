CLS
COLOR 15, 0: LOCATE 1, 1: PRINT " F"; : COLOR 7, 0: PRINT "ile    "; : COLOR 15, 0: PRINT "E"; : COLOR 7, 0
PRINT "dit    "; : COLOR 15, 0: PRINT "R"; : COLOR 7, 0: PRINT "un": COLOR 15, 0: LOCATE 1, 67: PRINT "H"; : COLOR 7, 0
PRINT "elp    E"; : COLOR 15, 0: PRINT "x"; : COLOR 7, 0: PRINT "it": COLOR 1, 0
FOR y = 2 TO 23
FOR x = 1 TO 80
LOCATE y, x: PRINT CHR$(219)
NEXT x
NEXT y
COLOR 15, 1

