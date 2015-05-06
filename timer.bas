start:
CLS
SLEEP 7200
DO
lm$ = INKEY$
PLAY "ggggg"
LOOP UNTIL lm$ = CHR$(65)
GOTO start

