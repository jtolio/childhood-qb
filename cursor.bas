CLS
start:
a$ = INKEY$
IF RIGHT$(a$, 1) = "M" THEN temp$ = "RIGHT": GOTO cool
IF RIGHT$(a$, 1) = "P" THEN temp$ = "DOWN": GOTO cool
IF RIGHT$(a$, 1) = "K" THEN temp$ = "LEFT": GOTO cool
IF RIGHT$(a$, 1) = "H" THEN temp$ = "UP": GOTO cool
IF a$ > CHR$(0) THEN PRINT a$;
IF a$ > CHR$(0) THEN PRINT ASC(a$)
GOTO start
cool:
PRINT temp$;
PRINT ASC(a$)
GOTO start

