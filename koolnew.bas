PRINT "(c) JT & Co."
PRINT "Please put CAPS LOCK down."
INPUT "Press ENTER to go on.", wierd!
IF choice = 1 THEN GOTO wierd2
wierd2:
SCREEN 8
COLOR 10
PRINT
PRINT "Welcome to JT's CoOl PrOgRaM!!!"
PRINT
COLOR 12
PRINT "You need to type some identification so the program can make you a password."
COLOR 10
PRINT
PRINT "Type your first name here (Please one word!No spaces,etc.Only 8 letters long!)."
COLOR 12
INPUT ">", choice1$
COLOR 10
PRINT
PRINT "Your middle initial and last name."
COLOR 12
INPUT ">", choice2$
COLOR 10
PRINT
PRINT "Your address and phone number."
COLOR 12
INPUT ">", choice3$
COLOR 10
PRINT
PRINT "Your E-Mail address."
COLOR 12
INPUT ">", choice4$
COLOR 10
PRINT
PRINT "And finally, the date."
COLOR 12
INPUT ">", choice5$
COLOR 10
PRINT
PRINT "Write this down!! Your password is 482-BC12-LM9"
PRINT
COLOR 12
INPUT "Press ENTER when you've got it!", wierd
IF wierd = 1 THEN GOTO nextery
nextery:
PRINT
COLOR 10
PRINT "OK!! You're in!"
COLOR 10
lm$ = "a:\data\mordat\" + choice1$ + ".jto"
PRINT
PRINT "Please wait...Loading"
COLOR 12
SHELL "del c:\JTsProg\Koolprog.exe"
COLOR 10
SHELL "copy c:\JTsProg\data\koolprog.exe c:\JTsProg\*.*"
OPEN lm$ FOR OUTPUT AS #1
PRINT #1, choice1$; " "; choice2$
PRINT #1, choice3$
PRINT #1, choice4$
PRINT #1, choice5$
PRINT #1, "482-BC12-LM9"
CLOSE #1
COLOR 12
PRINT "You do not need the disk anymore."
SHELL "start c:\JTsProg\koolprog.exe"
SHELL "482-BC12-LM9"
END

