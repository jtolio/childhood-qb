DECLARE FUNCTION dir$ ()
ON ERROR GOTO errorhandler
ver$ = "5"
OPEN "C:\TempWDos.wd" FOR OUTPUT AS #1
PRINT #1, "WolfDos" + ver$ + " is currently active!"
CLOSE #1
OPEN "C:\TempWDos.bat" FOR OUTPUT AS #1
PRINT #1, ""
CLOSE #1
CLS
COLOR 15
PRINT "WolfWare DOS " + ver$
PRINT "(C) by WolfWare Interactive"
PRINT
PRINT "Type EXIT to return to your operating system."
COLOR 7
PRINT
start1:
PRINT dir$;
LINE INPUT " >", toshell$
toshell$ = UCASE$(LTRIM$(RTRIM$(toshell$)))
IF toshell$ = "" THEN GOTO start1
IF toshell$ = "EXIT" THEN GOTO endy
SHELL toshell$
OPEN "C:\TEMPWDOS.BAT" FOR INPUT AS #1
INPUT #1, temp$
CLOSE #1
IF UCASE$(temp$) > CHR$(0) THEN GOSUB sheller
GOTO start1
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
RESUME start1

FUNCTION dir$
SHELL "CD >TMPDIR.TMP"
OPEN "TMPDIR.TMP" FOR INPUT AS #1
INPUT #1, temp$
CLOSE #1
SHELL "DEL TMPDIR.TMP"
dir$ = UCASE$(temp$)
END FUNCTION

