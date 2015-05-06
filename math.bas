'JT's Math Program
CLS
PRINT "(c) JT & Co."
PRINT "Please have CAPS LOCK down."
PRINT "Press Space Bar to go on."
SLEEP
SCREEN 8
start:
COLOR 10
PRINT
PRINT
PRINT "WeLcOmE tO jT's MaTh PrOgRaM"
PRINT
COLOR 12
INPUT "Do you want the (C)alculator or the (Q)uizer >", c$
SELECT CASE c$
CASE "C"
GOTO calc
CASE "Q"
GOTO quiz
END SELECT
calc:
COLOR 10
PRINT "Do you want to (a)dd, (s)ubtract, (d)ivide, (m)ultiply,"
COLOR 12
PRINT "or find out measurements in (c)omparison with"
COLOR 10
PRINT "other measurements >", choice$
SELECT CASE choice$
CASE "A"
GOTO add
CASE "S"
GOTO subt
CASE "D"
GOTO div
CASE "M"
GOTO mult
CASE "C"
GOTO compare
END SELECT
add:
GOTO dat
PRINT first$ + second$
GOTO start
dat:
COLOR 12
PRINT
INPUT "First number here >", first$
COLOR 10
INPUT "Second number here >", second$
COLOR 12
RETURN
quiz:
subt:
mult:
div:
compare:


