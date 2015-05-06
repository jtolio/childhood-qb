DECLARE SUB instructions ()
DECLARE SUB gamer ()
DECLARE SUB wall1 ()
DECLARE SUB person1 ()
DECLARE SUB goon ()
DECLARE SUB talk ()
DECLARE SUB passem ()
DECLARE SUB passer ()
DECLARE SUB passer2 ()
DECLARE SUB actualgame ()
DECLARE SUB ender ()
DECLARE SUB intructions ()
DECLARE SUB goon2 ()
CLS
SCREEN 7
wall1
person1
COLOR 1
LOCATE 11, 15: PRINT "HI!"
talk
goon
wall1
person1
COLOR 1
LOCATE 11, 3: PRINT "You're in JT's sub & movement test!"
talk
goon2
gamer
ender
END

SUB actualgame
wall1
person1
PLAY "defdc#"
COLOR 7
LOCATE 23, 13: PRINT "Press 1 to exit."
start:
lm$ = INKEY$
IF lm$ = CHR$(56) THEN GOSUB up
IF lm$ = CHR$(52) THEN GOSUB lt
IF lm$ = CHR$(54) THEN GOSUB rt
IF lm$ = CHR$(50) THEN GOSUB dn
IF lm$ = "1" THEN ender
GOTO start
up:
v = v - 1
GOSUB superall
FOR i = 1 TO 1000: NEXT i
v = v - 1
GOSUB superall
FOR i = 1 TO 1000: NEXT i
v = v - 1
GOSUB superall
FOR i = 1 TO 1000: NEXT i
v = v - 1
GOSUB superall
FOR i = 1 TO 1000: NEXT i
v = v - 1
GOSUB superall
FOR i = 1 TO 1000: NEXT i
v = v - 1
GOSUB superall
FOR i = 1 TO 1000: NEXT i
v = v - 1
GOSUB superall
FOR i = 1 TO 1000: NEXT i
v = v - 1
GOSUB superall
FOR i = 1 TO 1000: NEXT i
v = v + 1
GOSUB superall
FOR i = 1 TO 1000: NEXT i
v = v + 1
GOSUB superall
FOR i = 1 TO 1000: NEXT i
v = v + 1
GOSUB superall
FOR i = 1 TO 1000: NEXT i
v = v + 1
GOSUB superall
FOR i = 1 TO 1000: NEXT i
v = v + 1
GOSUB superall
FOR i = 1 TO 1000: NEXT i
v = v + 1
GOSUB superall
FOR i = 1 TO 1000: NEXT i
v = v + 1
GOSUB superall
FOR i = 1 TO 1000: NEXT i
v = v + 1
GOSUB superall
FOR i = 1 TO 1000: NEXT i
GOSUB smush
RETURN
lt:
h = h - 1
GOSUB superall
RETURN
rt:
h = h + 1
GOSUB superall
RETURN
superall:
CLS
wall1
COLOR 2
LOCATE 21 + v, 19 + h: PRINT "* *"
lm$ = INKEY$
IF lm$ = CHR$(52) THEN GOSUB lt
IF lm$ = CHR$(54) THEN GOSUB rt
LOCATE 20 + v, 19 + h: PRINT "* *"
lm$ = INKEY$
IF lm$ = CHR$(52) THEN GOSUB lt
IF lm$ = CHR$(54) THEN GOSUB rt
LOCATE 19 + v, 19 + h: PRINT "***"
LOCATE 18 + v, 19 + h: PRINT "***"
lm$ = INKEY$
IF lm$ = CHR$(52) THEN GOSUB lt
IF lm$ = CHR$(54) THEN GOSUB rt
LOCATE 17 + v, 17 + h: PRINT "*******"
lm$ = INKEY$
IF lm$ = CHR$(52) THEN GOSUB lt
IF lm$ = CHR$(54) THEN GOSUB rt
LOCATE 16 + v, 17 + h: PRINT "*  *  *"
LOCATE 13 + v, 20 + h: PRINT "*"
lm$ = INKEY$
IF lm$ = CHR$(52) THEN GOSUB lt
IF lm$ = CHR$(54) THEN GOSUB rt
LOCATE 14 + v, 19 + h: PRINT "* *"
lm$ = INKEY$
IF lm$ = CHR$(52) THEN GOSUB lt
IF lm$ = CHR$(54) THEN GOSUB rt
COLOR 6
LOCATE 15 + v, 19 + h: PRINT "***"
lm$ = INKEY$
IF lm$ = CHR$(52) THEN GOSUB lt
IF lm$ = CHR$(54) THEN GOSUB rt
LOCATE 14 + v, 20 + h: PRINT "*"
LOCATE 13 + v, 19 + h: PRINT "*"
lm$ = INKEY$
IF lm$ = CHR$(52) THEN GOSUB lt
IF lm$ = CHR$(54) THEN GOSUB rt
LOCATE 13 + v, 21 + h: PRINT "*"
RETURN
smush:
COLOR 2
LOCATE 21, 19 + h: PRINT "л л"
LOCATE 20, 19 + h: PRINT "л л"
LOCATE 19, 19 + h: PRINT "ллл"
LOCATE 18, 19 + h: PRINT "ллл"
LOCATE 17, 17 + h: PRINT "ллллллл"
LOCATE 16, 17 + h: PRINT "л  л  л"
LOCATE 13, 20 + h: PRINT "л"
LOCATE 14, 19 + h: PRINT "л л"
COLOR 6
LOCATE 15, 19 + h: PRINT "ллл"
LOCATE 14, 20 + h: PRINT "л"
LOCATE 13, 19 + h: PRINT "л"
LOCATE 13, 21 + h: PRINT "л"
FOR i = 1 TO 1000: NEXT i
CLS
wall1
COLOR 2
LOCATE 21, 19 + h: PRINT "л л"
LOCATE 20, 19 + h: PRINT "ллл"
LOCATE 19, 19 + h: PRINT "ллл"
LOCATE 18, 17 + h: PRINT "лммлммл"
LOCATE 15, 20 + h: PRINT "л"
LOCATE 16, 19 + h: PRINT "л л"
COLOR 6
LOCATE 17, 19 + h: PRINT "ллл"
LOCATE 16, 20 + h: PRINT "л"
LOCATE 15, 19 + h: PRINT "л"
LOCATE 15, 21 + h: PRINT "л"
FOR i = 1 TO 1000: NEXT i
CLS
wall1
COLOR 2
LOCATE 21, 19 + h: PRINT "лпл"
LOCATE 20, 19 + h: PRINT "ллл"
LOCATE 19, 17 + h: PRINT "лммлммл"
LOCATE 16, 20 + h: PRINT "л"
LOCATE 17, 19 + h: PRINT "л л"
COLOR 6
LOCATE 18, 19 + h: PRINT "ллл"
LOCATE 17, 20 + h: PRINT "л"
LOCATE 16, 19 + h: PRINT "л"
LOCATE 16, 21 + h: PRINT "л"
FOR i = 1 TO 1000: NEXT i
CLS
wall1
COLOR 2
LOCATE 21, 19 + h: PRINT "лпл"
LOCATE 20, 17 + h: PRINT "лммлммл"
LOCATE 17, 20 + h: PRINT "л"
LOCATE 18, 19 + h: PRINT "л л"
COLOR 6
LOCATE 19, 19 + h: PRINT "ллл"
LOCATE 18, 20 + h: PRINT "л"
LOCATE 17, 19 + h: PRINT "л"
LOCATE 17, 21 + h: PRINT "л"
FOR i = 1 TO 1000: NEXT i
CLS
wall1
COLOR 2
LOCATE 21, 17 + h: PRINT "ллллллл"
LOCATE 18, 20 + h: PRINT "л"
LOCATE 19, 19 + h: PRINT "л л"
COLOR 6
LOCATE 20, 19 + h: PRINT "ллл"
LOCATE 19, 20 + h: PRINT "л"
LOCATE 18, 19 + h: PRINT "л"
LOCATE 18, 21 + h: PRINT "л"
FOR i = 1 TO 1000: NEXT i
CLS
wall1
COLOR 2
LOCATE 19, 20 + h: PRINT "л"
LOCATE 20, 19 + h: PRINT "л л"
COLOR 6
LOCATE 21, 19 + h: PRINT "ллл"
LOCATE 20, 20 + h: PRINT "л"
LOCATE 19, 19 + h: PRINT "л"
LOCATE 19, 21 + h: PRINT "л"
FOR i = 1 TO 1000: NEXT i
CLS
wall1
COLOR 2
LOCATE 21, 18 + h: PRINT "ллллл"
LOCATE 20, 18 + h: PRINT "ллллл"
COLOR 6
LOCATE 21, 19 + h: PRINT "ллл"
LOCATE 20, 18 + h: PRINT "л"
LOCATE 20, 20 + h: PRINT "л"
LOCATE 20, 22 + h: PRINT "л"
FOR i = 1 TO 1000: NEXT i
COLOR 1
LOCATE 19, 20 + h: PRINT "|"
LOCATE 18, 20 + h: PRINT "|"
LOCATE 17, 20 + h: PRINT "|"
LOCATE 16, 18 + h: PRINT "OUCH!"
FOR i = 1 TO 10000: NEXT i
CLS
wall1
GOSUB remakeperson
RETURN
dn:
CLS
wall1
COLOR 2
LOCATE 21, 19 + h: PRINT "* *"
LOCATE 20, 19 + h: PRINT "***"
LOCATE 19, 17 + h: PRINT "*******"
LOCATE 18, 17 + h: PRINT "*  *  *"
LOCATE 15, 20 + h: PRINT "*"
LOCATE 16, 19 + h: PRINT "* *"
COLOR 6
LOCATE 17, 19 + h: PRINT "***"
LOCATE 16, 20 + h: PRINT "*"
LOCATE 15, 19 + h: PRINT "*"
LOCATE 15, 21 + h: PRINT "*"
FOR i = 1 TO 1000: NEXT i
CLS
wall1
GOSUB remakeperson
RETURN
remakeperson:
COLOR 2
LOCATE 21 + v, 19 + h: PRINT "* *"
LOCATE 20 + v, 19 + h: PRINT "* *"
LOCATE 19 + v, 19 + h: PRINT "***"
LOCATE 18 + v, 19 + h: PRINT "***"
LOCATE 17 + v, 17 + h: PRINT "*******"
LOCATE 16 + v, 17 + h: PRINT "*  *  *"
LOCATE 13 + v, 20 + h: PRINT "*"
LOCATE 14 + v, 19 + h: PRINT "* *"
COLOR 6
LOCATE 15 + v, 19 + h: PRINT "***"
LOCATE 14 + v, 20 + h: PRINT "*"
LOCATE 13 + v, 19 + h: PRINT "*"
LOCATE 13 + v, 21 + h: PRINT "*"
RETURN
END SUB

SUB ender
CLS
SCREEN 0
PRINT "BYE!"
END
END SUB

SUB gamer
CLS
PLAY "defda"
wall1
person1
COLOR 1
LOCATE 11, 9: PRINT "YOU..HAVE NOW ENTERED!"
talk
COLOR 12
LOCATE 23, 15: PRINT "BWA!HA!HA!"
COLOR 3
passem
END SUB

SUB goon
COLOR 7
LOCATE 23, 9: INPUT "Press ENTER to go on.", choicre
IF choicre = 1 THEN GOTO ce
ce:
END SUB

SUB goon2
COLOR 7
LOCATE 23, 7: INPUT "1=Intructions, 2=Go On >", systematic
IF systematic = 1 THEN instructions
IF systematic = 2 THEN GOTO nouse
nouse:
END SUB

SUB instructions
CLS
COLOR 2
PRINT "You press NUM LOCK, then 8 is Jump, 4 is"
COLOR 4
PRINT "left, 6 is right, and 2 is duck, OK?"
COLOR 2
PRINT "(ENTER=exit)"
INPUT "", dfg
nouse2:
END SUB

SUB passem
passer
END SUB

SUB passer
passer2
END SUB

SUB passer2
LOCATE 9, 7: INPUT "Password >", pass$
IF pass$ = "it" THEN actualgame
IF pass$ = "This dude is cool!" THEN actualgame
IF pass$ = "friend" THEN actualgame
IF pass$ = "onurb" THEN actualgame
IF pass$ = "JT" THEN actualgame ELSE
ender
END SUB

SUB person1
COLOR 2
LOCATE 21, 19: PRINT "* *"
LOCATE 20, 19: PRINT "* *"
LOCATE 19, 19: PRINT "***"
LOCATE 18, 19: PRINT "***"
LOCATE 17, 17: PRINT "*******"
LOCATE 16, 17: PRINT "*  *  *"
LOCATE 13, 20: PRINT "*"
LOCATE 14, 19: PRINT "* *"
COLOR 6
LOCATE 15, 19: PRINT "***"
LOCATE 14, 20: PRINT "*"
LOCATE 13, 19: PRINT "*"
LOCATE 13, 21: PRINT "*"
END SUB

SUB talk
LOCATE 14, 18: PRINT "\"
LOCATE 13, 17: PRINT "\"
LOCATE 12, 16: PRINT "\"
END SUB

SUB wall1
CLS
COLOR 4
PRINT "лллллллллллллллллллллллллллллллллллллллл"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "л                                      л"
PRINT "лллллллллллллллллллллллллллллллллллллллл"
END SUB

