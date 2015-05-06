SCREEN 8
COLOR 10
INPUT "Password >", password$
IF password$ = "482-BC12-LM9" THEN GOTO nexter
IF password$ = "I returned the disk" THEN GOTO nexter
IF password$ = "JTOlds" THEN GOTO nexter
ELSE
COLOR 12
PRINT "I'm sorry. That's not it."
END
nexter:
COLOR 12
PRINT "Hi!! You FINALLY made it!!!"
COLOR 10
PRINT "If you don't like this COOL program, then press 2 here. Press 1 to use it."
COLOR 12
INPUT ">", choiced
IF choiced = 1 THEN GOTO nexter2
IF choiced = 2 THEN GOTO sad
sad:
SHELL "start c:\jtsprog\uninstal.exe"
GOTO ender
ender:
SCREEN 0
COLOR 0
PRINT "DONE"
END
nexter2:

