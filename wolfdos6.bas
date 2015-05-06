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
IF COMMAND$ = "/?" THEN GOTO commandhelp
IF COMMAND$ > CHR$(0) THEN toshell$ = COMMAND$: GOTO commandpromptstart
SHELL "C:\WOLFDOS.BAT"
CLS
COLOR 15
PRINT "WolfWare DOS " + ver$
PRINT "(C) by WolfWare Interactive"
PRINT
PRINT "Type EXIT to return to your operating system."
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
IF UCASE$(toshell$) = "STRTMENU" THEN
GOSUB startmenu
GOTO start
END IF
IF UCASE$(toshell$) = "?" OR toshell$ = "HELP" THEN
GOSUB help
GOTO start
END IF
IF toshell$ = "" THEN GOTO start
IF UCASE$(toshell$) = "EXIT" THEN GOTO endy
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
PRINT "Commands: ?         This help screen"
PRINT "          LT        Runs the last command"
PRINT "          EXIT      Exits WolfDos"
PRINT "          STRTMENU  Displays the menu that lets"
PRINT "                    you configure what starts up"
PRINT "                    when you run WolfDos" + ver$ + "."
PRINT "Syntax: WOLFDOS" + ver$ + " [shellfirst or /?]"
PRINT "        shellfirst: Instead of shellfirst, type"
PRINT "                    what you want to run first."
PRINT "                    WolfDos skips what you set"
PRINT "                    to run first. (optional)"
PRINT "        /?: Runs the help menu for the syntax"
PRINT "            (optional)"
PRINT
RETURN
startmenu:
PRINT
PRINT "Welcome to the WolfDos StartMenu!"
PRINT
PRINT "Would you like to change your StartMenu? <Y/N>"
doloop1:
lm$ = UCASE$(INKEY$)
IF lm$ = "Y" THEN PRINT : GOTO goRightOn1
IF lm$ = "N" THEN PRINT : RETURN
GOTO doloop1
goRightOn1:
INPUT "How many items do you want in your startmenu? >", items
items = FIX(items)
IF items < 1 THEN PRINT "To little": GOTO goRightOn1
IF items > 10 THEN PRINT "To much": GOTO goRightOn1
PRINT "[drive]:\[folder(s)]\[nameoffile.ext]"
PRINT "Example: C:\MYFILES\MYPROGS\MYPROG.EXE"
FOR i = 1 TO items
PRINT "What is the #" + LTRIM$(RTRIM$(STR$(i))) + " thing to run?";
LINE INPUT " >", item$(i)
item$(i) = UCASE$(RTRIM$(LTRIM$(item$(i))))
NEXT i
OPEN "C:\WOLFDOS.BAT" FOR OUTPUT AS #1
FOR i = 1 TO items
PRINT #1, item$(i)
NEXT i
CLOSE #1
PRINT "Would you like to test your startmenu? <Y/N>"
doloop2:
lm$ = UCASE$(INKEY$)
IF lm$ = "Y" THEN PRINT : GOTO goRightOn2
IF lm$ = "N" THEN PRINT "Thank you.": PRINT : RETURN
GOTO doloop2
goRightOn2:
SHELL "C:\WOLFDOS.BAT"
PRINT
PRINT "Thank you."
PRINT
PRINT "Press a key to continue..."
PRINT
SLEEP
RETURN
commandhelp:
PRINT
PRINT "WolfDos" + ver$ + " command prompt help"
PRINT "Syntax: WOLFDOS" + ver$ + " [shellfirst or /?]"
PRINT "        shellfirst: Instead of shellfirst, type"
PRINT "                    what you want to run first."
PRINT "                    WolfDos skips what you set"
PRINT "                    to run first. (optional)"
PRINT "        /?: Runs the help menu for the syntax"
PRINT "            (optional)"
PRINT
END

FUNCTION dir$
SHELL "CD >C:\TMPDIR.TMP"
OPEN "C:\TMPDIR.TMP" FOR INPUT AS #1
INPUT #1, temp$
CLOSE #1
SHELL "DEL C:\TMPDIR.TMP"
dir$ = UCASE$(temp$)
END FUNCTION

