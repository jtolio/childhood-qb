CLS
SCREEN 7
DATA 12
DATA 12
xlength = 1
ylength = 2
FOR x = 1 TO xlength
FOR y = 1 TO ylength
READ z
PSET (x, y), z
NEXT
NEXT
DIM weird(xlength * ylength)


