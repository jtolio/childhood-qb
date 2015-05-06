New:
DIM Line$(40)
n = 1
Page = 1
FOR n = 0 TO 40
Line$(n) = ""
NEXT
Title$ = ""
Start:
CLS
COLOR 6
PRINT
PRINT "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴"
PRINT "Tool Bar: [T]itle][P]age Number][E]dit Line][N]ew][S]ave][O]pen]"
PRINT
PRINT "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴"
IF Page = 1 THEN
FOR n = 1 TO 20
 PRINT Line$(n)
NEXT
ELSEIF Page = 2 THEN
FOR n = 21 TO 40
 PRINT Line$(n)
NEXT
END IF
DO
A$ = INKEY$
IF A$ = "N" OR A$ = "n" THEN GOTO New
IF A$ = "S" OR A$ = "s" THEN GOTO SaveIt
IF A$ = "O" OR A$ = "o" THEN GOTO LoadIt
IF A$ = "T" OR A$ = "t" THEN GOTO ChangeTitle
IF A$ = "E" OR A$ = "e" THEN GOTO EditLineNumber
IF A$ = "P" OR A$ = "p" AND Page = 1 THEN Page = 2: GOTO Start
IF A$ = "P" OR A$ = "p" AND Page = 2 THEN Page = 1: GOTO Start ELSE
LOOP
END
EditLineNumber:
CLS
DO
PRINT "Press 0 to return to main menu"
 INPUT "Line: ", n
 INPUT "Text: ", Line$(n)
LOOP UNTIL n = 0
GOTO Start
END
SaveIt:
CLS
INPUT "File name and path:", FileName$
OPEN FileName$ FOR OUTPUT AS #1
FOR n = 0 TO 40
PRINT #1, Line$(n)
NEXT
GOTO Start
END
LoadIt:
CLS
INPUT "File name and path:", FileName$
OPEN FileName$ FOR INPUT AS #1
FOR n = 0 TO 40
INPUT #1, Line$(n)
NEXT
GOTO Start
END
ChangeTitle:
CLS
INPUT "Title name:", Title$
GOTO Start
END

