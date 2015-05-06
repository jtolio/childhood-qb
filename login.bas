DECLARE FUNCTION dir$ ()
DIM temped$(1000)
DIM a$(1000)
DIM a(22, 80)
DIM p$(1000)
codeOffset = 39
version$ = "7.0"
'OPEN dir$ + "\wolflogn.inf" FOR INPUT AS #1
'INPUT #1, temp$
'LINE INPUT #1, location$
'CLOSE #1
location$ = dir$
SHELL "path >tmppth.tmp"
OPEN "temppath.tmp" FOR INPUT AS #1
LINE INPUT #1, temp$
CLOSE
OPEN location$ + "\lognpath.bat" FOR OUTPUT AS #1
PRINT #1, "DO NOT DELETE!!!"
PRINT #1, temp$
CLOSE
SHELL "md " + location$ + "\GUEST"
SHELL "md " + location$ + "\ADMIN"
OPEN location$ + "\USERS.INF" FOR INPUT AS #2
INPUT #2, temp$
LINE INPUT #2, adpass$
temped$(1) = adpass$
temp = 1
GOSUB decodea
adpass$ = temped$(1)
FOR i = 1 TO 1000
LINE INPUT #2, a$(i)
NEXT i
FOR i = 1 TO 1000
LINE INPUT #2, p$(i)
NEXT i
CLOSE #2
FOR i = 1 TO 1000
temped$(i) = a$(i)
NEXT i
FOR temp = 1 TO 1000
GOSUB decodea
NEXT temp
FOR i = 1 TO 1000
a$(i) = temped$(i)
NEXT i
FOR i = 1 TO 1000
temped$(i) = p$(i)
NEXT i
FOR temp = 1 TO 1000
GOSUB decodea
NEXT temp
FOR i = 1 TO 1000
p$(i) = temped$(i)
NEXT i
CLS
wolfloginlogo:
DATA  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080
DATA  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080
DATA  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080
DATA  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080
DATA  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080
DATA  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080
DATA  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080
DATA  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080
DATA  2080 ,  1243 ,  3872 ,  3872 ,  3872 ,  1243 ,  2080 ,  1243 ,  1243 ,  1243
DATA  1243 ,  1243 ,  2080 ,  1243 ,  3872 ,  2080 ,  3872 ,  1243 ,  1243 ,  2080
DATA  2080 ,  2080 ,  3872 ,  3872 ,  2080 ,  3872 ,  2080 ,  2080 ,  3872 ,  2080
DATA  3872 ,  3872 ,  219 ,  219 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  219 ,  219 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  1243 ,  1056 ,  1243 ,  1056 ,  1243 ,  3872 ,  1243 ,  1056 ,  3872
DATA  1056 ,  1243 ,  1056 ,  1243 ,  3872 ,  3872 ,  3872 ,  1243 ,  1046 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  1755 ,  1755 ,  219 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  219 ,  1755 ,  1755 ,  219 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  3872 ,  1243 ,  1243 ,  1243
DATA  1243 ,  1243 ,  3872 ,  1243 ,  1243 ,  1243 ,  3872 ,  1243 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  1755 ,  2267 ,  1755 ,  219 ,  3872 ,  219 ,  219 ,  219
DATA  219 ,  3872 ,  219 ,  219 ,  219 ,  219 ,  219 ,  3872 ,  3872 ,  3872
DATA  219 ,  1755 ,  2267 ,  1755 ,  219 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  475 ,  475 ,  3872 ,  3872 ,  3872 ,  3872 ,  475 ,  475 ,  475
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  3872 ,  3872 ,  3872 ,  3872 ,  1568 ,  3872 ,  3872 ,  3872 ,  1056
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  1755 ,  2267 ,  2267 ,  1755 ,  219 ,  219 ,  219 ,  219
DATA  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219 ,  219
DATA  1755 ,  2267 ,  2267 ,  1755 ,  219 ,  219 ,  3872 ,  3872 ,  3872 ,  3872
DATA  475 ,  475 ,  3872 ,  3872 ,  475 ,  475 ,  3872 ,  3872 ,  3872 ,  475
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  1243 ,  3872 ,  3872 ,  3872 ,  1243 ,  3872 ,  1243 ,  1243 ,  1243
DATA  1243 ,  1243 ,  3872 ,  1243 ,  1243 ,  1245 ,  3872 ,  1243 ,  1243 ,  3872
DATA  3872 ,  1568 ,  1568 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  1568 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755
DATA  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755
DATA  1755 ,  1755 ,  1755 ,  1755 ,  219 ,  3872 ,  3872 ,  3872 ,  3872 ,  475
DATA  475 ,  3872 ,  3872 ,  475 ,  1568 ,  1568 ,  1568 ,  3872 ,  3872 ,  475
DATA  475 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  1243 ,  1568 ,  1243 ,  1568 ,  1243 ,  3872 ,  1243 ,  1046 ,  1046
DATA  1046 ,  1243 ,  3872 ,  1243 ,  1046 ,  1245 ,  3872 ,  1243 ,  1046 ,  1568
DATA  1568 ,  1568 ,  3872 ,  1568 ,  1568 ,  1568 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  1568 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755
DATA  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755
DATA  1755 ,  1755 ,  1755 ,  1755 ,  2080 ,  2080 ,  2080 ,  2080 ,  3872 ,  475
DATA  3872 ,  3872 ,  475 ,  475 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  475 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  1243 ,  1243 ,  1243 ,  1243 ,  1243 ,  3872 ,  1243 ,  1056 ,  1568
DATA  1568 ,  1243 ,  3872 ,  1243 ,  3872 ,  1243 ,  3872 ,  1243 ,  1243 ,  1568
DATA  1568 ,  1568 ,  3872 ,  3872 ,  1568 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  1568 ,  1755 ,  1755 ,  219 ,  219 ,  219 ,  219 ,  1755 ,  1755
DATA  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  219 ,  219 ,  219 ,  219
DATA  219 ,  1755 ,  1755 ,  1755 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  475
DATA  3872 ,  3872 ,  475 ,  1568 ,  1568 ,  1568 ,  1568 ,  1568 ,  1568 ,  1568
DATA  475 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  1755 ,  1755 ,  1755 ,  219 ,  219 ,  219 ,  219 ,  219
DATA  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  219 ,  219 ,  219 ,  219 ,  219
DATA  1755 ,  1755 ,  1755 ,  219 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  475
DATA  3872 ,  3872 ,  475 ,  475 ,  475 ,  475 ,  475 ,  1568 ,  3872 ,  3872
DATA  475 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  1568 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  219
DATA  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  219 ,  1755 ,  1755 ,  1755 ,  1755
DATA  1755 ,  1755 ,  219 ,  219 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  475
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  475
DATA  475 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  1568 ,  1568 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755 ,  219
DATA  1755 ,  1755 ,  1755 ,  1755 ,  219 ,  219 ,  1755 ,  1755 ,  1755 ,  1755
DATA  1755 ,  219 ,  219 ,  219 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475 ,  475
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  1755 ,  1755 ,  1755 ,  1755 ,  219
DATA  1755 ,  1755 ,  1755 ,  1755 ,  219 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755
DATA  1755 ,  219 ,  219 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  219 ,  4059 ,  3872 ,  3872 ,  4059 ,  4059 ,  4059 ,  3872 ,  4059 ,  4063
DATA  4063 ,  4063 ,  3872 ,  4059 ,  4059 ,  4059 ,  3872 ,  4059 ,  4059 ,  3872
DATA  3872 ,  4059 ,  3872 ,  4059 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  1755 ,  1755 ,  1568
DATA  1755 ,  1755 ,  1755 ,  1755 ,  219 ,  1755 ,  1755 ,  1755 ,  1755 ,  1755
DATA  219 ,  219 ,  219 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  219 ,  4059 ,  3872 ,  3872 ,  4059 ,  3872 ,  4059 ,  3872 ,  4059 ,  3872
DATA  4063 ,  4059 ,  3872 ,  3872 ,  4059 ,  3872 ,  3872 ,  4059 ,  3872 ,  4059
DATA  3872 ,  4059 ,  3872 ,  4063 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  1755 ,  1568
DATA  1755 ,  1755 ,  1755 ,  219 ,  219 ,  1755 ,  1755 ,  1755 ,  1755 ,  219
DATA  219 ,  219 ,  3872 ,  3872 ,  3872 ,  1243 ,  1568 ,  1568 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  4059 ,  4059 ,  3872 ,  4059 ,  4059 ,  4059 ,  3872 ,  4059 ,  4059
DATA  4059 ,  4059 ,  3872 ,  4059 ,  4059 ,  4059 ,  3872 ,  4059 ,  3872 ,  3872
DATA  4059 ,  4059 ,  3872 ,  4060 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  1755
DATA  1755 ,  1755 ,  219 ,  219 ,  1755 ,  1755 ,  1755 ,  1755 ,  219 ,  219
DATA  219 ,  219 ,  3872 ,  3872 ,  1243 ,  1056 ,  1056 ,  987 ,  987 ,  987
DATA  3872 ,  3872 ,  731 ,  731 ,  731 ,  731 ,  731 ,  731 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  219 ,  1755
DATA  1755 ,  1755 ,  219 ,  1755 ,  1755 ,  1755 ,  1755 ,  219 ,  219 ,  219
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  987 ,  3872 ,  3872 ,  987
DATA  3872 ,  3872 ,  731 ,  3872 ,  3872 ,  3872 ,  3872 ,  731 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059
DATA  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059
DATA  4059 ,  4059 ,  4059 ,  4059 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  1755 ,  1755 ,  219 ,  219 ,  3872 ,  219 ,  219
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  987 ,  3872 ,  1568 ,  987
DATA  3872 ,  3872 ,  3872 ,  731 ,  3872 ,  3872 ,  731 ,  1568 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  219 ,  3872 ,  219 ,  3872 ,  219 ,  219
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  987 ,  987 ,  987
DATA  3872 ,  3872 ,  3872 ,  3872 ,  731 ,  731 ,  1568 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  219 ,  3872 ,  3872 ,  3872 ,  219 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  1568 ,  987
DATA  3872 ,  3872 ,  1568 ,  731 ,  1568 ,  3872 ,  731 ,  1568 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  987
DATA  3872 ,  544 ,  731 ,  1568 ,  3872 ,  3872 ,  1568 ,  731 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080
DATA  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  987
DATA  3872 ,  544 ,  731 ,  731 ,  731 ,  731 ,  731 ,  731 ,  3872 ,  3872
DATA  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  3872 ,  2080 ,  3872 ,  2080
DATA  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080
DATA  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080
DATA  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080
DATA  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080
DATA  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080
DATA  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080
DATA  2080 ,  544 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080
DATA  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080 ,  2080
RESTORE wolfloginlogo
FOR i = 1 TO 22
FOR j = 1 TO 80
READ a(i, j)
NEXT j
NEXT i
FOR i = 1 TO 22
FOR j = 1 TO 80
LOCATE i, j
COLOR FIX(a(i, j) / 256)
PRINT CHR$(a(i, j) MOD 256)
NEXT j
NEXT i
FOR i = 1 TO 22
FOR j = 1 TO 80
a(i, j) = 15 * 256 + 32
NEXT j
NEXT i
start:
IF INKEY$ > CHR$(0) THEN GOTO hellothere
GOTO start
hellothere:
CLS
COLOR 15
FOR i = 1 TO 1000
IF LEN(a$(i)) > 0 THEN users = users + 1
IF UCASE$(a$(i)) = " " THEN users = users - 1
NEXT i
PRINT "WolfLogin version "; version$; " (c)WolfWare Interactive Inc."
login:
INPUT "User login name here >", username$
IF UCASE$(username$) = "COMMAND" THEN GOTO dircom
IF username$ = "" THEN GOTO login
IF UCASE$(username$) = "EXIT" THEN GOTO exiter
IF UCASE$(username$) = "GUEST" THEN GOTO GoOn2
IF UCASE$(username$) = "ADMIN" THEN GOTO adminpass
FOR i = 1 TO 1000
IF UCASE$(a$(i)) = UCASE$(username$) THEN temp = i: GOTO GoOn
NEXT i
PRINT "Invalid user name"
GOTO login
GoOn:
INPUT "User password here >", userpass$
CLS
IF UCASE$(userpass$) = "EXIT" THEN GOTO exiter
IF userpass$ = "" THEN GOTO GoOn
IF UCASE$(p$(temp)) = UCASE$(userpass$) THEN GOTO GoOn2
PRINT "Invalid password"
GOTO login
newer:
INPUT "Password here >", newpass$
CLS
IF UCASE$(newpass$) = "GOGGLES" THEN GOTO hereGoOn
PRINT "Invalid Password"
RETURN
hereGoOn:
INPUT "New username here >", temp$
FOR i = 1 TO 1000
IF UCASE$(temp$) = UCASE$(a$(i)) THEN PRINT "User name already used.": RETURN
NEXT i
IF UCASE$(temp$) = "COMMAND" THEN PRINT "Not a valid user name.": RETURN
IF UCASE$(temp$) = "NEW" THEN PRINT "Not a valid user name.": RETURN
IF UCASE$(temp$) = "CHANGE" THEN PRINT "Not a valid user name.": RETURN
IF UCASE$(temp$) = "EXIT" THEN PRINT "Not a valid user name.": RETURN
IF UCASE$(temp$) = "GUEST" THEN PRINT "User name already used.": RETURN
IF UCASE$(temp$) = "ADMIN" THEN PRINT "User name already used.": RETURN
a$(users + 1) = UCASE$(temp$)
users = users + 1
INPUT "New password here >", temp$
p$(users) = temp$
CLS
OPEN location$ + "\users.inf" FOR OUTPUT AS #1
temped$(1) = adpass$
temp = 1
GOSUB codea
adpass$ = temped$(1)
FOR i = 1 TO 1000
temped$(i) = a$(i)
NEXT i
FOR temp = 1 TO 1000
GOSUB codea
NEXT temp
PRINT #1, "DO NOT DELETE!!!"
PRINT #1, adpass$
FOR i = 1 TO 1000
PRINT #1, temped$(i)
NEXT i
p$(users) = UCASE$(temp$)
FOR i = 1 TO 1000
temped$(i) = p$(i)
NEXT i
FOR temp = 1 TO 1000
GOSUB codea
NEXT temp
FOR i = 1 TO 1000
PRINT #1, temped$(i)
NEXT i
CLOSE #1
CLS
SHELL "md " + location$ + "\" + UCASE$(a$(users))
CLS
RETURN
adminpass:
INPUT "System administrator password here >", userpass$
IF UCASE$(userpass$) = UCASE$(adpass$) THEN GOTO admin
CLS
PRINT "Invalid password."
GOTO login
GoOn2:
SHELL "md " + location$ + "\" + UCASE$(username$)
CHDIR location$ + "\" + UCASE$(username$)
CLS
PRINT "Use all of your favorite DOS commands. You stay in your one folder."
PRINT "I have also included PAINTPRO.EXE, DOVE.EXE, QBASIC.EXE,"
PRINT "and QBCODE.EXE which are editors. Type EXIT to go back to the"
PRINT "login screen. You can also copy stuff by using COPYTHAT.EXE"
PRINT "Type CHANGE.EXE to change your password."
PRINT "You are in " + location$ + "\" + UCASE$(username$)
command:
SHELL "cd"
INPUT ">", commander$
IF UCASE$(commander$) = "EXIT" THEN CLS : GOTO login
IF UCASE$(commander$) = "" THEN GOTO command
IF UCASE$(commander$) = "COPYTHAT" THEN GOSUB COPYTHAT: GOTO command
IF UCASE$(commander$) = "COPYTHAT.EXE" THEN GOSUB COPYTHAT: GOTO command
IF UCASE$(commander$) = "CHANGE" THEN GOSUB changer: GOTO command
IF UCASE$(commander$) = "CHANGE.EXE" THEN GOSUB changer: GOTO command
SHELL commander$
CHDIR location$ + "\" + UCASE$(username$)
GOTO command
COPYTHAT:
PRINT "Where is the file you want to copy"
PRINT "Example: a:\myfile.txt"
INPUT ">", temp$
PRINT "Where do you want to copy it to?"
PRINT "To the public folder(1)? To your folder(2)?"
PRINT "If you are copying an executable, if you want everyone's"
PRINT "access to it you should do (1). If only you want"
PRINT "access to it you should use (2)."
INPUT ">", temp
IF temp = 1 THEN SHELL "copy " + temp$ + " " + location$ + "\*.*"
IF temp = 2 THEN SHELL "copy " + temp$ + " " + location$ + "\" + username$ + "\*.*"
RETURN
exiter:
INPUT "Password >", temp$
IF UCASE$(temp$) = "FLIPPERS" THEN GOTO exiter2
IF temp$ = "" THEN GOTO login
GOTO login
admin:
SHELL "md " + location$ + "\ADMIN"
CHDIR location$ + "\ADMIN"
CLS
PRINT "Welcome, System Administrator!"
PRINT "WolfDOS for WOLFLOGIN"
PRINT "Commands are PAINTPRO.EXE, DOVE.EXE, QBASIC.EXE, NEW.EXE,"
PRINT "CHANGE.EXE and QBCODE.EXE. Type EXIT to go back to the"
PRINT "login screen."
PRINT
command2:
SHELL "cd"
INPUT ">", commander$
IF UCASE$(commander$) = "EXIT" THEN CLS : GOTO login
IF UCASE$(commander$) = "" THEN GOTO command2
IF UCASE$(commander$) = "NEW" THEN GOSUB newer: GOTO command2
IF UCASE$(commander$) = "NEW.EXE" THEN GOSUB newer: GOTO command2
IF UCASE$(commander$) = "CHANGE" THEN GOSUB changer: GOTO command2
IF UCASE$(commander$) = "CHANGE.EXE" THEN GOSUB changer: GOTO command2
SHELL commander$
GOTO command2

codea:
C$ = ""
slen = LEN(temped$(temp))
FOR i = 0 TO slen - 1
rlen = slen - i
rstr$ = RIGHT$(temped$(temp), rlen)
indexchar = ASC(rstr$)
IF indexchar < 32 OR indexchar > 126 THEN GOTO tempcodea
indexchar = indexchar + codeOffset + 9
IF indexchar > 126 THEN indexchar = indexchar - 126 + 32
tempcodea:
C$ = C$ + CHR$(indexchar)
NEXT i
temped$(temp) = C$
RETURN

decodea:
C$ = ""
slen = LEN(temped$(temp))
FOR i = 0 TO slen - 1
rlen = slen - i
rstr$ = RIGHT$(temped$(temp), rlen)
indexchar = ASC(rstr$)
IF indexchar < 32 OR indexchar > 126 THEN GOTO tempdecodea
indexchar = indexchar - codeOffset - 9
IF indexchar < 32 THEN indexchar = indexchar + 126 - 32
tempdecodea:
C$ = C$ + CHR$(indexchar)
NEXT i
temped$(temp) = C$
RETURN

changer:
INPUT "Username to change here >", changeuser$
IF changeuser$ = "" THEN PRINT "Not a valid user name.": RETURN
IF UCASE$(changeuser$) = "COMMAND" THEN PRINT "Not a valid user name.": RETURN
IF UCASE$(changeuser$) = "NEW" THEN PRINT "Not a valid user name.": RETURN
IF UCASE$(changeuser$) = "CHANGE" THEN PRINT "Not a valid user name.": RETURN
IF UCASE$(changeuser$) = "EXIT" THEN PRINT "Not a valid user name.": RETURN
IF UCASE$(changeuser$) = "GUEST" THEN PRINT "User name already used.": RETURN
IF UCASE$(changeuser$) = "ADMIN" THEN GOTO itssnowing
FOR i = 1 TO 1000
IF UCASE$(a$(i)) = UCASE$(changeuser$) THEN temp = i: GOTO itssnowing
NEXT i
PRINT "Invalid user name"
RETURN
itssnowing:
INPUT "User password here >", changepass$
IF UCASE$(changeuser$) = "ADMIN" THEN IF UCASE$(changepass$) = UCASE$(adpass$) GOTO adminpasschange
IF UCASE$(changeuser$) = "ADMIN" THEN IF UCASE$(changepass$) <> UCASE$(adpass$) THEN PRINT "Invalid user password.": RETURN
IF changepass$ = "" THEN PRINT "Invalid user password": RETURN
IF UCASE$(changepass$) = UCASE$(p$(temp)) THEN CLS : GOTO changenow
PRINT "Invalid user password"
RETURN
changenow:
INPUT "New password here >", changedpass$
CLS
p$(temp) = UCASE$(changedpass$)
CLS
OPEN location$ + "\users.inf" FOR OUTPUT AS #1
temped$(1) = adpass$
temp = 1
GOSUB codea
adpass$ = temped$(1)
FOR i = 1 TO 1000
temped$(i) = a$(i)
NEXT i
FOR temp = 1 TO 1000
GOSUB codea
NEXT temp
PRINT #1, "DO NOT DELETE!!!"
PRINT #1, adpass$
FOR i = 1 TO 1000
PRINT #1, temped$(i)
NEXT i
p$(users) = UCASE$(temp$)
FOR i = 1 TO 1000
temped$(i) = p$(i)
NEXT i
FOR temp = 1 TO 1000
GOSUB codea
NEXT temp
FOR i = 1 TO 1000
PRINT #1, temped$(i)
NEXT i
CLOSE #1
CLS
RETURN
dircom:
PRINT
PRINT "Commands/User(s) are:"
PRINT "COMMAND"
PRINT "EXIT"
PRINT "ADMIN"
PRINT "GUEST"
FOR i = 1 TO 1000
IF UCASE$(a$(i)) > CHR$(0) THEN IF UCASE$(a$(i)) <> " " THEN PRINT UCASE$(a$(i))
NEXT i
PRINT
GOTO login
adminpasschange:
INPUT "New system administrator password here >", changedpass$
CLS
adpass$ = UCASE$(changedpass$)
OPEN location$ + "\users.inf" FOR OUTPUT AS #1
temped$(1) = adpass$
temp = 1
GOSUB codea
adpass$ = temped$(1)
FOR i = 1 TO 1000
temped$(i) = a$(i)
NEXT i
FOR temp = 1 TO 1000
GOSUB codea
NEXT temp
PRINT #1, "DO NOT DELETE!!!"
PRINT #1, adpass$
FOR i = 1 TO 1000
PRINT #1, temped$(i)
NEXT i
p$(users) = UCASE$(temp$)
FOR i = 1 TO 1000
temped$(i) = p$(i)
NEXT i
FOR temp = 1 TO 1000
GOSUB codea
NEXT temp
FOR i = 1 TO 1000
PRINT #1, temped$(i)
NEXT i
CLOSE #1
CLS
RETURN
exiter2:
CLS
OPEN location$ + "\backup.inf" FOR OUTPUT AS #1
temped$(1) = adpass$
temp = 1
GOSUB codea
adpass$ = temped$(1)
FOR i = 1 TO 1000
temped$(i) = a$(i)
NEXT i
FOR temp = 1 TO 1000
GOSUB codea
NEXT temp
PRINT #1, "DO NOT DELETE!!!"
PRINT #1, adpass$
FOR i = 1 TO 1000
PRINT #1, temped$(i)
NEXT i
p$(users) = UCASE$(temp$)
FOR i = 1 TO 1000
temped$(i) = p$(i)
NEXT i
FOR temp = 1 TO 1000
GOSUB codea
NEXT temp
FOR i = 1 TO 1000
PRINT #1, temped$(i)
NEXT i
CLOSE #1
CLS
END

FUNCTION dir$
SHELL "CD >TMPDIR.TMP"
OPEN "TMPDIR.TMP" FOR INPUT AS #1
INPUT #1, temp$
CLOSE
SHELL "DEL TMPDIR.TMP"
dir$ = UCASE$(temp$)
END FUNCTION

