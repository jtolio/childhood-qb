name$ = "JT View"
version$ = "2.0"
exename$ = "JTVIEW"
ON ERROR GOTO Handler
h = 1
lines = -1
IF INSTR(UCASE$(COMMAND$), "/?") > 0 THEN GOTO helper
IF INSTR(UCASE$(COMMAND$), "/L:") > 0 THEN GOTO setlines
IF COMMAND$ > "" THEN where$ = UCASE$(COMMAND$): GOTO opener
helper:
PRINT
PRINT name$ + " " + version$
PRINT
PRINT "Switches: /?   Help (This page)"
PRINT "          /l:# Tell " + exename$ + " how many lines per page."
PRINT "Syntax: " + exename$ + " [switches] or [drive]:\[folder(s)]\[filename].[extension]"
PRINT "Example: " + exename$ + " /l:20 C:\MYFILES\MYTEXT.TXT"
PRINT
END
setlines:
i = 1
most$ = RIGHT$(UCASE$(COMMAND$), LEN(COMMAND$) - INSTR(UCASE$(COMMAND$), "/L:") - 2)
start1:
IF RIGHT$(LEFT$(most$, i), 1) = " " THEN
        lines = VAL(LEFT$(most$, i - 1))
        j = 1
start2:
        IF LEFT$(RIGHT$(COMMAND$, j), 1) = " " THEN
                where$ = RIGHT$(COMMAND$, j - 1)
        
                GOTO opener
        END IF
        j = j + 1
        GOTO start2
END IF
i = i + 1
GOTO start1
opener:
PRINT
PRINT name$ + " " + version$
PRINT "-------------------------"
PRINT "Opening file:"
PRINT where$
PRINT
PRINT "Press ENTER to view..."
INPUT "", key$
ON ERROR GOTO nextstep
IF lines < 0 THEN
        i = 1
findsizeofscreen:
        LOCATE i, 1: PRINT " "
        i = i + 1
        GOTO findsizeofscreen
nextstep:
        lines = i - 4
END IF
CLS
OPEN where$ FOR INPUT AS #1
DO WHILE NOT EOF(1)
LINE INPUT #1, temp$
LOCATE h, 1: PRINT temp$
h = h + 1
IF h >= lines THEN GOSUB waiter
LOOP
CLOSE #1
IF h > 2 THEN
        PRINT "--------------------------"
        PRINT "Press ENTER to continue..."
        INPUT "", key$
END IF
PRINT
PRINT "End of file..."
PRINT
END
waiter:
PRINT "--------------------------"
PRINT "Press ENTER to continue..."
INPUT "", key$
CLS
h = 1
RETURN
Handler:
SELECT CASE ERR
CASE 53
GOTO wrongfile
CASE 54
GOTO wrongfile
CASE 57
GOTO wrongfile
CASE 64
GOTO wrongfile
CASE 68
GOTO wrongfile
CASE 70
GOTO wrongfile
CASE 71
GOTO wrongfile
CASE 72
GOTO wrongfile
CASE 75
GOTO wrongfile
CASE 76
GOTO wrongfile
CASE ELSE
PRINT "Unexpected Error. Quiting. Error number #" + LTRIM$(RTRIM$(STR$(ERR)))
END
END SELECT
wrongfile:
PRINT "Bad file name or location. Please try again."
PRINT
END

