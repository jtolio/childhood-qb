DIM a2$(1000)
DIM p$(1000)
DIM a$(2002)
DIM temped$(2000)
wlfix$ = "70"
q = 0
adpass$ = CHR$(34) + "!)u$"
codeOffset = 39
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
PRINT "Where do you want to install it?"
PRINT "[drive]:\[folder]"
PRINT "Example: C:\WOLFLOGN"
INPUT ">", where$
where$ = UCASE$(where$)
PRINT "Do you already have a version"
PRINT "of WolfLogin in the specified"
PRINT "folder or is the version"
PRINT "broken? <Y/N/B> "
doloop2:
lm$ = INKEY$
IF UCASE$(lm$) = "Y" THEN GOTO GoOn3
IF UCASE$(lm$) = "N" THEN GOTO GoOn2
IF UCASE$(lm$) = "B" THEN q = 1: GOTO GoOn2
GOTO doloop2
GoOn2:
PRINT "Installing..."
IF q = 0 THEN SHELL "md " + where$
OPEN where$ + "\users.inf" FOR OUTPUT AS #1
PRINT #1, "DO NOT DELETE!!!"
PRINT #1, adpass$
FOR i = 1 TO 1000
PRINT #1, "P"
NEXT i
FOR i = 1 TO 1000
PRINT #1, "P"
NEXT i
PRINT #1, "DO NOT DELETE!!"
CLOSE #1
OPEN where$ + "\backup.inf" FOR OUTPUT AS #1
PRINT #1, "DO NOT DELETE!!!"
PRINT #1, adpass$
FOR i = 1 TO 1000
PRINT #1, "P"
NEXT i
FOR i = 1 TO 1000
PRINT #1, "P"
NEXT i
PRINT #1, "DO NOT DELETE!!"
CLOSE #1
SHELL "copy .\LOGIN.DAT " + where$ + "\EVA16.EXE"
SHELL "copy .\PAINTPRO.DAT " + where$ + "\PAINTPRO.EXE"
SHELL "copy .\DOVE.DAT " + where$ + "\DOVE.EXE"
SHELL "copy .\CONFIG.DAT " + where$ + "\DOVE.CFG"
SHELL "copy .\QBASIC.DAT " + where$ + "\QBASIC.EXE"
SHELL "copy .\QBHLP.DAT " + where$ + "\QBASIC.HLP"
SHELL "copy .\QBCODE.DAT " + where$ + "\QBCODE.EXE"
SHELL "copy .\WL" + wlfix$ + "FIX.DAT " + where$ + "\WL" + wlfix$ + "FIX.EXE"
OPEN where$ + "\LOGIN.BAT" FOR OUTPUT AS #1
PRINT #1, "PATH=" + where$
PRINT #1, "C:"
PRINT #1, "CD " + where$
PRINT #1, where$ + "\EVA16.EXE"
PRINT #1, "CD ..\..\.."
PRINT #1, "LOGNPATH.BAT"
PRINT #1, "CLS"
CLOSE #1
OPEN where$ + "\wolflogn.inf" FOR OUTPUT AS #1
PRINT #1, "DO NOT DELETE!!!"
PRINT #1, where$
CLOSE #1
PRINT
PRINT "Finished."
PRINT "If any problems should occur please "
PRINT "run WL" + wlfix$ + "FIX.EXE in your WolfLogin"
PRINT "Folder."
END
GoOn3:
PRINT "Is your version 6.5"
PRINT "or above? <Y/N>"
doloop3:
lm$ = INKEY$
IF lm$ = "Y" THEN GOTO l65b
IF lm$ = "y" THEN GOTO l65b
IF lm$ = "N" THEN GOTO l40b
IF lm$ = "n" THEN GOTO l40b
GOTO doloop3
l65b:
PRINT "Installing..."
SHELL "copy .\LOGIN.DAT " + where$ + "\EVA16.EXE"
SHELL "copy .\PAINTPRO.DAT " + where$ + "\PAINTPRO.EXE"
SHELL "copy .\DOVE.DAT " + where$ + "\DOVE.EXE"
SHELL "copy .\CONFIG.DAT " + where$ + "\DOVE.CFG"
SHELL "copy .\QBASIC.DAT " + where$ + "\QBASIC.EXE"
SHELL "copy .\QBHLP.DAT " + where$ + "\QBASIC.HLP"
SHELL "copy .\QBCODE.DAT " + where$ + "\QBCODE.EXE"
SHELL "copy .\WL" + wlfix$ + "FIX.DAT " + where$ + "\WL" + wlfix$ + "FIX.EXE"
OPEN where$ + "\LOGIN.BAT" FOR OUTPUT AS #1
PRINT #1, "PATH=" + where$
PRINT #1, "C:"
PRINT #1, "CD " + where$
PRINT #1, where$ + "\EVA16.EXE"
PRINT #1, "CD ..\..\.."
PRINT #1, "LOGNPATH.BAT"
PRINT #1, "CLS"
CLOSE #1
OPEN where$ + "\wolflogn.inf" FOR OUTPUT AS #1
PRINT #1, "DO NOT DELETE!!!"
PRINT #1, where$
CLOSE #1
PRINT
PRINT "Finished."
PRINT "If any problems should occur please "
PRINT "run WL" + wlfix$ + "FIX.EXE in your WolfLogin"
PRINT "Folder."
END
l40b:
q = 1
GOTO GoOn2

