start:
INPUT ">", c$
IF c$ = "3.141592654" THEN OUT &H64, &HFE
SELECT CASE c$
CASE "a", "A", "b", "B", "c", "C", "d", "D", "e", "E", "f", "F", "g", "G"
PLAY c$
END SELECT
GOTO start

