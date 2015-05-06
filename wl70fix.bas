ver2$ = ""
version$ = "7.0"
CLS
COLOR 15
PRINT "Welcome to the Wolflogin Fixer for WolfLogin " + version$
IF ver2$ > CHR$(0) THEN PRINT "Version " + ver2$
PRINT "Where is WolfLogn " + version$ + "?"
PRINT "[drive]:\[folder]"
PRINT "Example: C:\WOLFLOGN"
INPUT ">", where$
where$ = UCASE$(where$)
PRINT "What drive is it in?"
PRINT "[drive]:"
PRINT "Example: C:"
INPUT ">", drive$
drive$ = UCASE$(drive$)
PRINT "What is the problem?"
PRINT "(1) Did you get a STRING SPACE error?"
PRINT "(2) Did you get an INPUT PAST END OF FILE error?"
PRINT "(3) Did you get an FILE NOT FOUND error?"
PRINT "# >"
doloop1:
lm$ = INKEY$
IF lm$ = "1" THEN GOTO strings
IF lm$ = "2" THEN GOTO file
IF lm$ = "3" THEN GOTO file
GOTO doloop1
file:
PRINT
PRINT "NOTE: THE <Y> OPTION IS MOST RECOMMENDED"
PRINT "FOR ALL OPTIONS!"
PRINT
PRINT "Do you want to backup USERS.INF"
PRINT "from BACKUP.INF or re-create"
PRINT "USERS.INF ? <Y/N/R>"
doloop2:
lm$ = INKEY$
IF UCASE$(lm$) = "Y" THEN U = 1: GOTO next1
IF UCASE$(lm$) = "N" THEN U = 0: GOTO next1
IF UCASE$(lm$) = "R" THEN U = 2: GOTO next1
GOTO doloop2
next1:
PRINT "Do you want to re-write"
PRINT "WOLFLOGN.INF? <Y/N>"
doloop5:
lm$ = INKEY$
IF UCASE$(lm$) = "Y" THEN W = 1: GOTO next2
IF UCASE$(lm$) = "N" THEN W = 0: GOTO next2
GOTO doloop5
next2:
PRINT "Do you want to re-write"
PRINT "LOGIN.BAT? <Y/N>"
doloop3:
lm$ = INKEY$
IF UCASE$(lm$) = "Y" THEN L = 1: GOTO next3
IF UCASE$(lm$) = "N" THEN L = 0: GOTO next3
GOTO doloop3
next3:
IF U = 1 THEN GOSUB users2
IF U = 2 THEN GOSUB users
IF W = 1 THEN GOSUB wolflogn
IF L = 1 THEN GOSUB login
GOTO ender
users:
PRINT "-USERS.INF-"
OPEN where$ + "\USERS.INF" FOR OUTPUT AS #1
PRINT #1, "DO NOT DELETE!!"
PRINT #1, CHR$(34) + "!)u$"
FOR i = 1 TO 2000
PRINT #1, "P"
NEXT i
PRINT #1, "DO NOT DELETE!!"
CLOSE #1
RETURN
wolflogn:
PRINT "-WOLFLOGN.INF-"
OPEN where$ + "\WOLFLOGN.INF" FOR OUTPUT AS #1
PRINT #1, "DO NOT DELETE!!"
PRINT #1, where$
CLOSE #1
RETURN
login:
PRINT "-LOGIN.BAT-"
OPEN where$ + "\LOGIN.BAT" FOR OUTPUT AS #1
PRINT #1, "REM -BY WL65FIX- DO NOT DELETE!!"
PRINT #1, "PATH=C:\WOLFLOGN"
PRINT #1, drive$
PRINT #1, "CD ..\..\..\.."
PRINT #1, "CD " + where$
PRINT #1, where$ + "\EVA16.EXE"
PRINT #1, drive$
PRINT #1, "CD ..\..\..\.."
PRINT #1, "LOGNPATH.BAT"
PRINT #1, "CLS"
CLOSE #1
RETURN
strings:
PRINT
PRINT "NOTE: THE <Y> OPTION IS MOST"
PRINT "RECOMMENDED!"
PRINT
PRINT "Do you want to re-write"
PRINT "LOGIN.BAT? <Y/N>"
doloop4:
lm$ = INKEY$
IF UCASE$(lm$) = "Y" THEN L = 1: GOTO next4
IF UCASE$(lm$) = "N" THEN L = 0: GOTO next4
GOTO doloop4
next4:
IF L = 1 THEN GOSUB login
PRINT
PRINT "Just keep trying to run LOGIN.BAT"
PRINT "a couple times. It should work within"
PRINT "10 tries."
ender:
PRINT
PRINT "If this did not work please e-mail"
PRINT "JTOlds@Yahoo.com on what time to"
PRINT "chat on the WolfWare company site."
PRINT "Http://WolfWare.CJB.Net/"
PRINT
PRINT "Press ENTER..."
SLEEP
SHELL drive$
SHELL "CD..\..\..\.."
CLS
END
users2:
PRINT "-BACKUP.INF ¯ USERS.INF-"
SHELL "DEL " + where$ + "\USERS.INF"
SHELL "REN " + where$ + "\BACKUP.INF USERS.INF"
RETURN

