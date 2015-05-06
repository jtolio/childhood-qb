GOTO beginning
start1:
errorstr$ = "UNKNOWN"
IF UCASE$(COMMAND$) = "WD1" THEN GOTO target1
IF UCASE$(COMMAND$) = "WD2" THEN GOTO target2
IF UCASE$(COMMAND$) = "CONTINUE" THEN GOTO continue
IF UCASE$(COMMAND$) = "END" THEN GOTO finishup
SHELL "md c:\temp"
SHELL "md c:\temp\temp"
SHELL "deltree /y c:\temp\temp"
SHELL "md c:\temp\temp"
CLS
COLOR 15
PRINT "CopyDisk for WolfDos"
PRINT
PRINT "Insert source disk."
INPUT "Press ENTER when ready.", temp$
PRINT
OPEN "c:\tempwdos.bat" FOR OUTPUT AS #2
PRINT #2, "xcopy a: c:\temp\temp /s/r/h/e"
PRINT #2, "WDCPYDSK WD1"
PRINT #2, "xcopy c:\temp\temp a: /s/r/h/e"
PRINT #2, "WDCPYDSK WD2"
CLOSE
END
target1:
COLOR 15
PRINT
PRINT "Insert target disk."
INPUT "Press ENTER when ready.", temp$
PRINT
END
target2:
COLOR 15
PRINT
PRINT "Please type WDCPYDSK CONTINUE in WolfDos to copy another disk from"
PRINT "the same source disk. Please type WDCPYDSK END in WolfDos to"
PRINT "complete the session."
INPUT "", temp$
END
errorhandler:
IF errorstr$ = "TEMPWDOS" THEN GOTO nowolfdos
CLS
PRINT "CopyDisk for WolfDos"
PRINT "Unknown error."
PRINT "Error number:";
PRINT ERR
PRINT
END
nowolfdos:
CLS
PRINT "CopyDisk for WolfDos"
PRINT "Error. WolfDos is not running."
PRINT "If you do not have WolfDos, you"
PRINT "can download the latest version"
PRINT "at Http://WolfWare.CJB.Net/"
PRINT
PRINT "Error number:";
PRINT ERR
PRINT
END
beginning:
ON ERROR GOTO errorhandler
errorstr$ = "TEMPWDOS"
OPEN "C:\TEMPWDOS.WD" FOR INPUT AS #1
INPUT #1, temp$
IF UCASE$(temp$) > "V" THEN
CLOSE
GOTO start1
END IF
IF UCASE$(temp$) <> "WOLFDOS" THEN
CLOSE
GOTO nowolfdos
END IF
CLOSE
GOTO nowolfdos
continue:
CLS
OPEN "c:\tempwdos.bat" FOR OUTPUT AS #2
PRINT #2, "xcopy c:\temp\temp a: /s/r/h/e"
PRINT #2, "WDCPYDSK WD2"
CLOSE
COLOR 15
PRINT "Thanks for continuing the WolfDos CopyDisk session."
GOTO target1
finishup:
SHELL "deltree /y c:\temp\temp"
CLS
COLOR 15
PRINT "CopyDisk for WolfDos"
PRINT "You will now need to rerun CopyDisk by typing WDCPYDSK in WolfDos"
PRINT "if you want to copy another disk."
PRINT
END

