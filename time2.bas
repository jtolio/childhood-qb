SCREEN 7
CLS
COLOR 15
LOCATE 5, 1
PRINT "The time is: " + TIME$
LOCATE 6, 1
PRINT "When will you be done? <HH:MM:SS>"
LOCATE 7, 1
PRINT "(Military time)"
LOCATE 8, 1
INPUT ">", timedone$
started$ = TIME$
CLS
start:
COLOR 15
LOCATE 5, 3: PRINT "The time is: " + TIME$
IF TIME$ = timedone$ THEN GOTO done
IF INKEY$ > CHR$(0) THEN END
LOCATE 7, 3: PRINT "You will be done at: " + timedone$
LOCATE 9, 3: PRINT "Started at: " + started$
GOTO start
done:
CLS
SCREEN 7
COLOR 15
LOCATE 5, 3: PRINT "You are done now: " + timedone$
LOCATE 9, 3: PRINT "DONE"
LOCATE 7, 3: PRINT "Started at: " + started$
SLEEP
END

