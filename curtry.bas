CLS
FOR i = 1 TO 18
KEY(i) ON
NEXT i
KEY(30) ON
KEY(31) ON
doloop:
ON KEY(1) GOSUB printer
ON KEY(2) GOSUB printer
ON KEY(3) GOSUB printer
ON KEY(4) GOSUB printer
ON KEY(5) GOSUB printer
ON KEY(6) GOSUB printer
ON KEY(7) GOSUB printer
ON KEY(8) GOSUB printer
ON KEY(9) GOSUB printer
ON KEY(10) GOSUB printer
ON KEY(30) GOSUB printer
ON KEY(31) GOSUB printer
ON KEY(15) GOSUB printer
ON KEY(16) GOSUB printer
ON KEY(17) GOSUB printer
ON KEY(18) GOSUB printer
GOTO doloop
printer:
COLOR 15
PRINT "Button Pressed"
RETURN

