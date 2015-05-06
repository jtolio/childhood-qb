SCREEN 7
COLOR 12
LOCATE 11, 3
PRINT "Wolf     Interactive         ..."
COLOR 10
LOCATE 11, 7
PRINT "Ware"
LOCATE 11, 25
PRINT "presents"
SLEEP
l4m = 1
OPEN "c:\startpro\open.ini" FOR OUTPUT AS #1
PRINT #1, l4m
CLOSE #1
SHELL "c:\startpro\qbasic.exe /run c:\startpro\stpplus.jto"
END

