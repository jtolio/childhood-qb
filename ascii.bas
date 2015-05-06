start:
lm$ = INKEY$
IF lm$ > CHR$(0) THEN PRINT ASC(lm$);
IF lm$ > CHR$(0) THEN PRINT lm$
GOTO start

