PRINT "Casino v1.0"
PRINT "(c) Wolf Ware"
PRINT
PRINT "Press a key to continue..."
doloop1:
IF INKEY$ > CHR$(0) THEN GOTO netxer
GOTO doloop1
netxer:
SCREEN 7
doloop2:
flip$ = "Lemmon"
LOCATE 5, 1
COLOR 14
PRINT flip$ + "                 "
IF INKEY$ > CHR$(0) THEN GOTO nexter
flip$ = "Bar"
LOCATE 5, 1
COLOR 15
PRINT flip$ + "                 "
IF INKEY$ > CHR$(0) THEN GOTO nexter
flip$ = "Jackpot"
LOCATE 5, 1
COLOR 1
PRINT flip$ + "                 "
IF INKEY$ > CHR$(0) THEN GOTO nexter
flip$ = "Cherry"
LOCATE 5, 1
COLOR 4
PRINT flip$ + "                 "
IF INKEY$ > CHR$(0) THEN GOTO nexter
flip$ = "Berry"
LOCATE 5, 1
COLOR 5
PRINT flip$ + "                 "
IF INKEY$ > CHR$(0) THEN GOTO nexter
GOTO doloop2
nexter:
flip2$ = "Lemmon"
LOCATE 6, 1
COLOR 14
PRINT flip2$ + "                 "
IF INKEY$ > CHR$(0) THEN GOTO nexter2
flip2$ = "Bar"
LOCATE 6, 1
COLOR 15
PRINT flip2$ + "                 "
IF INKEY$ > CHR$(0) THEN GOTO nexter2
flip2$ = "Jackpot"
LOCATE 6, 1
COLOR 1
PRINT flip2$ + "                 "
IF INKEY$ > CHR$(0) THEN GOTO nexter2
flip2$ = "Cherry"
LOCATE 6, 1
COLOR 4
PRINT flip2$ + "                 "
IF INKEY$ > CHR$(0) THEN GOTO nexter2
flip2$ = "Berry"
LOCATE 6, 1
COLOR 5
PRINT flip2$ + "                 "
IF INKEY$ > CHR$(0) THEN GOTO nexter2
GOTO nexter
nexter2:
flip3$ = "Lemmon"
LOCATE 7, 1
COLOR 14
PRINT flip3$ + "                 "
IF INKEY$ > CHR$(0) THEN GOTO nexter3
flip3$ = "Bar"
LOCATE 7, 1
COLOR 15
PRINT flip3$ + "                 "
IF INKEY$ > CHR$(0) THEN GOTO nexter3
flip3$ = "Jackpot"
LOCATE 7, 1
COLOR 1
PRINT flip3$ + "                 "
IF INKEY$ > CHR$(0) THEN GOTO nexter3
flip3$ = "Cherry"
LOCATE 7, 1
COLOR 4
PRINT flip3$ + "                 "
IF INKEY$ > CHR$(0) THEN GOTO nexter3
flip3$ = "Berry"
LOCATE 7, 1
COLOR 5
PRINT flip3$ + "                 "
IF INKEY$ > CHR$(0) THEN GOTO nexter3
GOTO nexter2
nexter3:
PRINT
PRINT
COLOR 15
IF flip$ = flip2$ THEN IF flip$ = flip3$ THEN PRINT "YOU WIN JACKPOT!!!"
IF flip$ = flip2$ THEN PRINT "Good Job!"
IF flip$ = flip3$ THEN PRINT "Good Job!"
IF flip2$ = flip3$ THEN PRINT "Good Job!"
PRINT "Would you like to play again? <Y/N>"
doloop4:
c$ = INKEY$
IF c$ = CHR$(32) THEN CLS : GOTO netxer
IF c$ = "y" THEN CLS : GOTO netxer
IF c$ = "Y" THEN CLS : GOTO netxer
IF c$ = "n" THEN CLS : END
IF c$ = "N" THEN CLS : END
GOTO doloop4

