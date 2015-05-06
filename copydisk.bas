SHELL "md c:\temp"
SHELL "md c:\temp\temp"
SHELL "deltree /y c:\temp\temp"
SHELL "md c:\temp\temp"
CLS
COLOR 15
PRINT
PRINT "Insert source disk."
INPUT "Press ENTER when ready.", temp$
PRINT
SHELL "xcopy /e a: c:\temp\temp"
PRINT
PRINT "Insert target disk."
start:
INPUT "Press ENTER when ready.", temp$
PRINT
SHELL "xcopy /e c:\temp\temp a:"
PRINT
INPUT "Do you want to make another? <Y/N>", temp$
IF temp$ = "Y" THEN PRINT "Insert next target disk.": GOTO start
IF temp$ = "y" THEN PRINT "Insert next target disk.": GOTO start
END

