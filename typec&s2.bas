startstart:
CLS
startstart2:
PRINT
SCREEN 8
PRINT
COLOR 1
PRINT "HI,"
PRINT
COLOR 10
PRINT "CHRIS!"
start:
'PRINT
COLOR 1
'PRINT "TYPE <SAM HELP> FOR HELP."
PRINT
COLOR 12
INPUT ">", c1$
IF c1$ = "SAM HELP" THEN GOTO help
IF c1$ = "sam help" THEN GOTO help
IF c1$ = "<SAM HELP>" THEN GOTO help
IF c1$ = "<sam help>" THEN GOTO help
COLOR 10
PRINT
INPUT ">", c2$
IF c2$ = "SAM HELP" THEN GOTO help
IF c2$ = "sam help" THEN GOTO help
IF c2$ = "<SAM HELP>" THEN GOTO help
IF c2$ = "<sam help>" THEN GOTO help
PRINT
COLOR 12
INPUT ">", c3$
IF c3$ = "SAM HELP" THEN GOTO help
IF c3$ = "sam help" THEN GOTO help
IF c3$ = "<SAM HELP>" THEN GOTO help
IF c3$ = "<sam help>" THEN GOTO help
COLOR 10
PRINT
INPUT ">", c4$
IF c4$ = "SAM HELP" THEN GOTO help
IF c4$ = "sam help" THEN GOTO help
IF c4$ = "<SAM HELP>" THEN GOTO help
IF c4$ = "<sam help>" THEN GOTO help
PRINT
COLOR 12
INPUT ">", c5$
IF c5$ = "SAM HELP" THEN GOTO help
IF c5$ = "sam help" THEN GOTO help
IF c5$ = "<SAM HELP>" THEN GOTO help
IF c5$ = "<sam help>" THEN GOTO help
COLOR 10
PRINT
INPUT ">", c6$
IF c6$ = "sam help" THEN GOTO help
IF c6$ = "<SAM HELP>" THEN GOTO help
IF c6$ = "<sam help>" THEN GOTO help
IF c6$ = "SAM HELP" THEN GOTO help
PRINT
COLOR 12
INPUT ">", c7$
IF c7$ = "SAM HELP" THEN GOTO help
IF c7$ = "sam help" THEN GOTO help
IF c7$ = "<SAM HELP>" THEN GOTO help
IF c7$ = "<sam help>" THEN GOTO help
COLOR 10
PRINT
INPUT ">", c8$
IF c8$ = "sam help" THEN GOTO help
IF c8$ = "<SAM HELP>" THEN GOTO help
IF c8$ = "<sam help>" THEN GOTO help
IF c8$ = "SAM HELP" THEN GOTO help
PRINT
COLOR 12
INPUT ">", c9$
IF c9$ = "SAM HELP" THEN GOTO help
IF c9$ = "sam help" THEN GOTO help
IF c9$ = "<SAM HELP>" THEN GOTO help
IF c9$ = "<sam help>" THEN GOTO help
COLOR 10
PRINT
INPUT ">", c10$
IF c10$ = "sam help" THEN GOTO help
IF c10$ = "<SAM HELP>" THEN GOTO help
IF c10$ = "<sam help>" THEN GOTO help
IF c10$ = "SAM HELP" THEN GOTO help
'PRINT
GOTO start
COLOR 12
PRINT "YOU HAVE NOW FILLED TYPEC&S UP WOULD YOU LIKE TO START OVER (1), SEE WHAT"
COLOR 10
PRINT "YOU TYPED (2), OR EXIT (3)? >"
COLOR 12
INPUT ">", choice
COLOR 10
IF choice = 1 THEN GOTO startstart
IF choice = 2 THEN GOTO printer
IF choice = 3 THEN GOTO ender
printer:
COLOR 10
PRINT c1$
COLOR 12
PRINT c2$
COLOR 10
PRINT c3$
COLOR 12
PRINT c4$
COLOR 10
PRINT c5$
COLOR 12
PRINT c6$
COLOR 10
PRINT c7$
COLOR 12
PRINT c8$
COLOR 10
PRINT c9$
COLOR 12
PRINT c10$
GOTO start
ender:
SCREEN 0
COLOR 0
PRINT "Done"
END
help:
COLOR 1
PRINT
PRINT "TYPE 1 TO EXIT, 2 TO START OVER, AND 3 TO PRINT WHAT YOU'VE DONE SO FAR."
INPUT ">", choicey
IF choicey = 1 THEN GOTO ender
IF choicey = 2 THEN GOTO startstart
IF choicey = 3 THEN GOTO printer

