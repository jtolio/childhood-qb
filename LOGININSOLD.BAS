PRINT "This will install WOLF LOGIN."
PRINT "Are you sure? <Y/N>"
doloop:
lm$ = INKEY$
IF lm$ = "Y" THEN GOTO goon
IF lm$ = "y" THEN GOTO goon
IF lm$ = "N" THEN END
IF lm$ = "n" THEN END
GOTO doloop
goon:
PRINT "Installing..."
SHELL "md c:\WOLFLOGN"
OPEN "c:\WOLFLOGN\USERS.EXE" FOR OUTPUT AS #1
FOR i = 1 TO 1000
PRINT #1, " "
NEXT i
FOR i = 1 TO 1000
PRINT #1, " "
NEXT i
CLOSE #1
SHELL "copy .\LOGIN.DAT c:\wolflogn\EVA16.EXE"
SHELL "copy .\PAINTPRO.DAT c:\wolflogn\PAINTPRO.EXE"
SHELL "copy .\DOVE.DAT c:\wolflogn\DOVE.EXE"
SHELL "copy .\CONFIG.DAT c:\wolflogn\DOVE.CFG"
SHELL "copy .\QBASIC.DAT c:\wolflogn\QBASIC.EXE"
SHELL "copy .\QBHLP.DAT c:\wolflogn\QBASIC.HLP"
SHELL "copy .\QBCODE.DAT c:\wolflogn\QBCODE.EXE"
OPEN "C:\WOLFLOGN\LOGIN.BAT" FOR OUTPUT AS #1
PRINT #1, "PATH=C:\WOLFLOGN"
PRINT #1, "C:\WOLFLOGN\EVA16.EXE"
CLOSE #1
PRINT "Finished."
END

