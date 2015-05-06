start:
SCREEN 8
COLOR 12
PRINT
PRINT
PRINT
PRINT "                      Welcome to the Musicalc TM"
PRINT
PRINT
COLOR 10
INPUT "Do you want the (M)usic player, or the (C)alculator (type E to exit) >", choice$
SELECT CASE choice$
CASE "e"
GOTO endnow
CASE "c"
GOTO calc
CASE "m"
GOTO mus
END SELECT

calc:
COLOR 9
PRINT
INPUT "Do you want to Add (a), Subtract (s), Divide (d), Or Multiply (m), (type E to   exit) >", choice$
SELECT CASE choice$
CASE "e"
GOTO endnow
CASE "a"
GOTO ad
CASE "s"
GOTO su
CASE "d"
GOTO di
CASE "m"
GOTO mu
END SELECT

ad:
PRINT
INPUT "First number>", fir
INPUT "Second number>", sec
PRINT fir + sec
GOTO start

su:
PRINT
INPUT "First number>", fir
INPUT "Second number>", sec
PRINT fir - sec
GOTO start

di:
PRINT
INPUT "First number>", fir
INPUT "Second number>", sec
PRINT fir / sec
GOTO start

mu:
PRINT
INPUT "First number>", fir
INPUT "Second number>", sec
PRINT fir * sec
GOTO start

mus:
COLOR 12
PRINT
INPUT "Please type the notes you want to play in order (type E to exit) >", scale$
SELECT CASE scale$
CASE "e"
GOTO endnow
END SELECT
PLAY scale$
GOTO start

endnow:
COLOR 10
CLS
LOCATE 12, 37: PRINT "DONE"
END

