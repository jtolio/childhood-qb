IF UCASE$(COMMAND$) = "CHANGE" THEN GOTO changer
IF UCASE$(COMMAND$) = "FIRST" THEN GOTO first1
IF UCASE$(COMMAND$) = "START" THEN GOTO startopen
IF UCASE$(COMMAND$) = "NOTIFY" THEN GOTO notifierprint
IF UCASE$(COMMAND$) = "ON" THEN GOTO usestart
IF UCASE$(COMMAND$) = "OFF" THEN GOTO exiter
ver$ = "1.0"
GOTO help
startopen:
ON ERROR GOTO errorhandler
GOTO start1
errorhandler:
IF ERR = 53 THEN
IF errstr$ = "start" THEN
RESUME doloop1
END IF
RESUME start1
END IF
CLS
COLOR 15
PRINT "Error in WolfWare Notify..."
PRINT "Error number:"; ERR
PRINT
CLS
SCREEN 13
END
endy:
CLS
COLOR 15
PRINT "Thank you for using WolfWare Notify"
PRINT
CLS
SCREEN 13
END
start1:
errstr1$ = "start"
CLS
COLOR 15
PRINT "Welcome to WolfWare Notify..."
PRINT
PRINT "Waiting for WolfDos..."
PRINT
doloop1:
FOR i = 1 TO 5000
IF i = 1 THEN OPEN "C:\TempWDos.wd" FOR INPUT AS #1
IF i = 1 THEN INPUT #1, temp$
IF i = 1 THEN IF UCASE$(temp$) > "V" THEN CLOSE : GOTO start2
IF i = 1 THEN CLOSE
NEXT i
GOTO doloop1:
start2:
errstr$ = "after"
PRINT "WolfDos found. Notify started."
OPEN "C:\WNotify.wnt" FOR INPUT AS #1
FOR i = 1 TO 5
INPUT #1, temp$
NEXT i
INPUT #1, delayed
CLOSE
temp = 0
GOSUB notify
start3:
temp = 0
TIMER ON
ON TIMER(delayed) GOSUB notify
doloop2:
IF temp = 1 THEN
TIMER OFF
GOTO start3
END IF
GOTO doloop2
check:
OPEN "c:\tempwdos.wd" FOR INPUT AS #1
INPUT #1, temp$
CLOSE
IF UCASE$(temp$) > "V" THEN RETURN
OPEN "c:\errormak.err" FOR INPUT AS #1
INPUT #1, temp$
CLOSE
RETURN
notify:
GOSUB check
GOSUB exitcheck
OPEN "C:\TempWDos.bat" FOR OUTPUT AS #1
PRINT #1, "WNotify.exe NOTIFY"
CLOSE
temp = 1
No = No + 1
LOCATE 19, 1: PRINT STR$(No) + " Notify(s) sent."
RETURN
exitcheck:
OPEN "C:\WNotify.wnt" FOR INPUT AS #1
INPUT #1, thing1$
INPUT #1, thing2$
INPUT #1, thing3$
INPUT #1, thing4$
INPUT #1, offspace$
CLOSE
IF UCASE$(offspace$) = "ON" THEN RETURN
IF UCASE$(offspace$) = "OFF" THEN GOTO next1
RETURN
next1:
OPEN "C:\WNotify.wnt" FOR OUTPUT AS #1
PRINT #1, thing1$
PRINT #1, thing2$
PRINT #1, thing3$
PRINT #1, thing4$
PRINT #1, "ON"
PRINT #1, delayed
CLOSE
GOTO endy

'Main program ends here-----------------------------------------------------
notifierprint: '------------------------------------------------------------
'Second run from WolfDos begins here----------------------------------------

OPEN "C:\WNotify.wnt" FOR INPUT AS #1
LINE INPUT #1, thing1$
LINE INPUT #1, thing2$
LINE INPUT #1, thing3$
LINE INPUT #1, thing4$
CLOSE
random1:
RANDOMIZE TIMER
randnum = FIX(RND * 8)
IF randnum < 1 OR randnum > 4 THEN GOTO random1
CLS
COLOR 15
PRINT "WolfWare Notifier:"
PRINT
IF randnum = 1 THEN PRINT thing1$
IF randnum = 2 THEN PRINT thing2$
IF randnum = 3 THEN PRINT thing3$
IF randnum = 4 THEN PRINT thing4$
PRINT
PRINT "Press a key..."
SLEEP
END

'Use start.exe--------------------------------------------------------------
usestart: '-----------------------------------------------------------------
'Use start.exe--------------------------------------------------------------

SHELL "C:\WINDOWS\COMMAND\START.EXE /M .\WNOTIFY.EXE START"
END

'First run------------------------------------------------------------------
first1: '-------------------------------------------------------------------
'First run------------------------------------------------------------------

CLS
COLOR 15
PRINT "Welcome to the first run of WolfWare Notify"
PRINT "This requires Windows 95"
PRINT "Any questions, please send to WolfWareInc@Yahoo.com"
PRINT "Syntax: WNOTIFY.EXE FIRST  = Goes to this screen"
PRINT "        WNOTIFY.EXE CHANGE = Goes to the reminder change screen"
PRINT "        WNOTIFY.EXE ON     = Turns the notifier on"
PRINT "        WNOTIFY.EXE OFF    = Turns the notifier off"
PRINT "        WNOTIFY.EXE        = A help screen"
PRINT
PRINT "Press ENTER to go to the change screen"
INPUT "", temp$
GOTO changer

'Notifier changer-----------------------------------------------------------
changer: '------------------------------------------------------------------
'Notifier changer-----------------------------------------------------------

CLS
COLOR 15
PRINT "Welcome to WolfWare Notify..."
PRINT
PRINT "What do you want to be reminded about?"
PRINT "Please type in four things."
LINE INPUT "#1 >", thing1$
LINE INPUT "#2 >", thing2$
LINE INPUT "#3 >", thing3$
LINE INPUT "#4 >", thing4$
PRINT "How many seconds do you want in between every reminder?"
INPUT ">", delayed
OPEN "C:\WNotify.wnt" FOR OUTPUT AS #1
PRINT #1, thing1$
PRINT #1, thing2$
PRINT #1, thing3$
PRINT #1, thing4$
PRINT #1, "ON"
PRINT #1, delayed
CLOSE
PRINT
PRINT "Thank you"
PRINT
END

'WolfWare exit--------------------------------------------------------------
exiter: '-------------------------------------------------------------------
'WolfWare exit--------------------------------------------------------------

CLS
COLOR 15
OPEN "C:\WNotify.wnt" FOR INPUT AS #1
INPUT #1, thing1$
INPUT #1, thing2$
INPUT #1, thing3$
INPUT #1, thing4$
INPUT #1, offspace$
INPUT #1, delayed
CLOSE
OPEN "C:\WNotify.wnt" FOR OUTPUT AS #1
PRINT #1, thing1$
PRINT #1, thing2$
PRINT #1, thing3$
PRINT #1, thing4$
PRINT #1, "OFF"
PRINT #1, delayed
CLOSE
PRINT "Wolf Notify turned off."
PRINT
PRINT "Please wait about" + STR$(delayed) + " second(s) for it to exit..."
END

'Help-----------------------------------------------------------------------
help: '---------------------------------------------------------------------
'Help-----------------------------------------------------------------------

CLS
COLOR 15
PRINT "WolfWare Notify " + ver$ + " help"
PRINT
PRINT "WolfWare Notify requires Windows 95"
PRINT "Any questions, please send to WolfWareInc@Yahoo.com"
PRINT "Syntax: WNOTIFY.EXE        = This help screen"
PRINT "        WNOTIFY.EXE CHANGE = Goes to the reminder change screen"
PRINT "        WNOTIFY.EXE ON     = Turns the notifier on"
PRINT "        WNOTIFY.EXE OFF    = Turns the notifier off"
PRINT "        WNOTIFY.EXE FIRST  = Goes to the startup screen"
PRINT "                             REQUIRED for first use on"
PRINT "                             any computer"
PRINT
END

