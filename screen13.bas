SCREEN 13
start:
FOR i = 0 TO 255
COLOR i
IF INKEY$ > CHR$(0) THEN GOTO ender
PRINT "лллллллллллллллллллллллллллллллллллллллл"
NEXT i
GOTO start
ender:
END

