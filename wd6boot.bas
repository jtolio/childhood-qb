DECLARE FUNCTION dir$ ()
ON ERROR GOTO errorhandler
DIM item$(10)
ver$ = "6"
OPEN "C:\TempWDos.wd" FOR OUTPUT AS #1
PRINT #1, "WolfDos" + ver$ + " is currently active!"
CLOSE #1
OPEN "C:\TempWDos.bat" FOR OUTPUT AS #1
PRINT #1, ""
CLOSE #1
IF COMMAND$ > CHR$(0) THEN toshell$ = COMMAND$: GOTO commandpromptstart
SHELL "C:\WOLFDOS.BAT"
CLS
COLOR 15
PRINT "WolfWare DOS " + ver$ + " boot up disk"
PRINT "(C) by WolfWare Interactive"
COLOR 7
PRINT
start:
PRINT dir$;
LINE INPUT " >", toshell$
commandpromptstart:
toshell$ = LTRIM$(RTRIM$(toshell$))
IF UCASE$(toshell$) = "LT" THEN
PRINT "LT: " + again$
toshell$ = again$
END IF
again$ = toshell$
IF UCASE$(toshell$) = "?" OR toshell$ = "HELP" THEN
GOSUB help
GOTO start
END IF
IF toshell$ = "" THEN GOTO start
SHELL toshell$
OPEN "C:\TEMPWDOS.BAT" FOR INPUT AS #1
INPUT #1, temp$
CLOSE #1
IF UCASE$(temp$) > CHR$(0) THEN GOSUB sheller
GOTO start
endy:
SHELL "DEL C:\TEMPWDOS.BAT"
SHELL "DEL C:\TEMPWDOS.WD"
CLS
COLOR 15
PRINT "Thank you for using WolfDos" + ver$
PRINT
SLEEP
SCREEN 13
END
sheller:
SHELL "C:\TEMPWDOS.BAT"
OPEN "C:\TEMPWDOS.BAT" FOR OUTPUT AS #1
PRINT #1, ""
CLOSE #1
CLS
RETURN
errorhandler:
IF ERR = 53 THEN GOTO wolfdosran
CLS
COLOR 15
PRINT "WolfDos error."
PRINT "Error number:"; ERR
PRINT
PRINT "Press any key..."
SLEEP
SHELL "DEL C:\TEMPWDOS.BAT"
SHELL "DEL C:\TEMPWDOS.WD"
SCREEN 13
END
wolfdosran:
OPEN "C:\TempWDos.bat" FOR OUTPUT AS #1
PRINT #1, ""
CLOSE
OPEN "C:\TempWDos.wd" FOR OUTPUT AS #1
PRINT #1, "WolfDos" + ver$ + " is currently active!"
CLOSE
RESUME start
help:
PRINT
PRINT "WolfDos" + ver$ + " help"
PRINT "Commands: ?    This help screen"
PRINT "          LT   Runs the last command"
PRINT
RETURN

FUNCTION dir$
SHELL "CD >C:\TMPDIR.TMP"
OPEN "C:\TMPDIR.TMP" FOR INPUT AS #1
INPUT #1, temp$
CLOSE #1
SHELL "DEL C:\TMPDIR.TMP"
dir$ = UCASE$(temp$)
END FUNCTION

