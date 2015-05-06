CLS
PRINT "(C) JT OLDS 1997"
PRINT "Push the CAPS LOCK button down."
PRINT "Loading. Please wait."
FOR i = 1 TO 100000: NEXT i
start:
SCREEN 8
COLOR 12
PRINT
PRINT
PRINT "                      Welcome to JT's Latin Memorizer."
PLAY "defda"
PRINT
COLOR 10
INPUT "Please type the 1st Latin word(s) here (1=exit all the time) >", choice1$
IF choice1$ = "1" THEN GOTO ender ELSE
COLOR 12
INPUT "Please type the meaning here >", choice2$
IF choice2$ = "1" THEN GOTO ender ELSE
COLOR 10
INPUT "Please type the 2nd Latin word(s) here >", choice3$
IF choice3$ = "1" THEN GOTO ender ELSE
COLOR 12
INPUT "Please type the meaning here >", choice4$
IF choice4$ = "1" THEN GOTO ender ELSE
COLOR 10
INPUT "Please type the 3rd Latin word(s) here >", choice5$
IF choice5$ = "1" THEN GOTO ender ELSE
COLOR 12
INPUT "Please type the meaning here >", choice6$
IF choice6$ = "1" THEN GOTO ender ELSE
COLOR 10
INPUT "Please type the 4th Latin word(s) here >", choice7$
IF choice7$ = "1" THEN GOTO ender ELSE
COLOR 12
INPUT "Please type the meaning here >", choice8$
IF choice8$ = "1" THEN GOTO ender ELSE
COLOR 10
INPUT "Please type the 5th Latin word(s) here >", choice9$
IF choice9$ = "1" THEN GOTO ender ELSE
COLOR 12
INPUT "Please type the meaning here >", choice10$
IF choice10$ = "1" THEN GOTO ender ELSE
COLOR 10
INPUT "Please type the 6th Latin word(s) here >", choice11$
IF choice11$ = "1" THEN GOTO ender ELSE
COLOR 12
INPUT "Please type the meaning here >", choice12$
IF choice12$ = "1" THEN GOTO ender ELSE
COLOR 10
INPUT "Please type the 7th Latin word(s) here >", choice13$
IF choice13$ = "1" THEN GOTO ender ELSE
COLOR 12
INPUT "Please type the meaning here >", choice14$
IF choice14$ = "1" THEN GOTO ender ELSE
COLOR 10
INPUT "Please type the 8th Latin word(s) here >", choice15$
IF choice15$ = "1" THEN GOTO ender ELSE
COLOR 12
INPUT "Please type the meaning here >", choice16$
IF choice16$ = "1" THEN GOTO ender ELSE
COLOR 10
INPUT "Please type the 9th Latin word(s) here >", choice17$
IF choice17$ = "1" THEN GOTO ender ELSE
COLOR 12
INPUT "Please type the meaning here >", choice18$
IF choice18$ = "1" THEN GOTO ender ELSE
COLOR 10
INPUT "Please type the last Latin word(s) here >", choice19$
IF choice19$ = "1" THEN GOTO ender ELSE
COLOR 12
INPUT "Please type the meaning here >", choice20$
IF choice20$ = "1" THEN GOTO ender ELSE
PRINT
COLOR 10
PRINT "Time for the test."
COLOR 12
INPUT "Press Enter when you're ready.", choice
IF choice = 1 THEN GOTO clsy
clsy:
CLS
PLAY "defda"
COLOR 10
PRINT "Welcome to the test"
PLAY "defdc#"
COLOR 12
sorry:
PRINT
COLOR 12
PRINT "Okay what does", choice9$, "mean in English?": INPUT " >", answer1$
IF answer1$ = choice10$ THEN GOTO next1 ELSE
IF answer1$ = "1" THEN GOTO ender
COLOR 10
PRINT "Sorry,"
COLOR 12
PRINT "Try again"
PRINT
COLOR 10
PRINT
PRINT "Welcome to the test."
GOTO sorry
next1:
COLOR 12
PRINT "What does", choice1$, "mean?": INPUT " >", answer1$
IF answer1$ = choice2$ THEN GOTO next2 ELSE
IF answer1$ = "1" THEN GOTO ender
COLOR 10
PRINT "Sorry,"
COLOR 12
PRINT "Try again"
PRINT
COLOR 10
PRINT
PRINT "Welcome to the test."
GOTO sorry
ender:
COLOR 0
SCREEN 0
INPUT "Do you want (Q)uit, or (R)estart >", endy$
SELECT CASE endy$
CASE "Q"
GOTO exiter
CASE "R"
GOTO start
END SELECT
exiter:
CLS
PRINT "DONE"
END
next2:
COLOR 12
PRINT "What does", choice7$, "mean?": INPUT " >", answer1$
IF answer1$ = choice8$ THEN GOTO next3 ELSE
IF answer1$ = "1" THEN GOTO ender
COLOR 10
PRINT "Sorry,"
COLOR 12
PRINT "Try again"
PRINT
COLOR 10
PRINT
PRINT "Welcome to the test."
GOTO sorry
next3:
COLOR 12
PRINT "What does", choice3$, "mean?": INPUT " >", answer1$
IF answer1$ = choice4$ THEN GOTO next4 ELSE
IF answer1$ = "1" THEN GOTO ender
COLOR 10
PRINT "Sorry,"
COLOR 12
PRINT "Try again"
PRINT
COLOR 10
PRINT
PRINT "Welcome to the test."
GOTO sorry
next4:
COLOR 12
PRINT "What does", choice5$, "mean?": INPUT " >", answer1$
IF answer1$ = choice6$ THEN GOTO next5 ELSE
IF answer1$ = "1" THEN GOTO ender
COLOR 10
PRINT "Sorry,"
COLOR 12
PRINT "Try again"
PRINT
COLOR 10
PRINT
PRINT "Welcome to the test."
GOTO sorry
next5:
COLOR 12
PRINT "What does", choice15$, "mean?": INPUT " >", answer1$
IF answer1$ = choice16$ THEN GOTO next6 ELSE
IF answer1$ = "1" THEN GOTO ender
COLOR 10
PRINT "Sorry,"
COLOR 12
PRINT "Try again"
sorryer:
PRINT
COLOR 10
PRINT
PRINT "Welcome to the test."
GOTO sorry
next6:
COLOR 12
PRINT "What does", choice11$, "mean?": INPUT " >", answer1$
IF answer1$ = choice12$ THEN GOTO next7 ELSE
IF answer1$ = "1" THEN GOTO ender
COLOR 10
PRINT "Sorry,"
COLOR 12
PRINT "Try again"
PRINT
COLOR 10
PRINT
PRINT "Welcome to the test."
GOTO sorry
next7:
COLOR 12
PRINT "What does", choice17$, "mean?": INPUT " >", answer1$
IF answer1$ = choice18$ THEN GOTO next8 ELSE
IF answer1$ = "1" THEN GOTO ender
COLOR 10
PRINT "Sorry,"
COLOR 12
PRINT "Try again"
PRINT
COLOR 10
PRINT
PRINT "Welcome to the test."
GOTO sorry
next8:
COLOR 12
PRINT "What does", choice13$, "mean?": INPUT " >", answer1$
IF answer1$ = choice14$ THEN GOTO next9 ELSE
IF answer1$ = "1" THEN GOTO ender
COLOR 10
PRINT "Sorry,"
COLOR 12
PRINT "Try again"
PRINT
COLOR 10
PRINT
PRINT "Welcome to the test."
GOTO sorry
next9:
COLOR 12
PRINT "What does", choice19$, "mean?": INPUT " >", answer1$
IF answer1$ = choice20$ THEN GOTO goody ELSE
IF answer1$ = "1" THEN GOTO ender
COLOR 10
PRINT "Sorry,"
COLOR 12
PRINT "Try again"
PRINT
COLOR 10
PRINT
PRINT "Welcome to the test."
GOTO sorry
goody:
PRINT
COLOR 10
PRINT "WHOOPY!!!"
COLOR 12
PRINT "YOU DID IT!!!"
PLAY "edegede"
COLOR 10
PRINT "Do you want to try the same (T)est again, (R)estart the whole program, or"
COLOR 12
INPUT "(E)xit? >", me$
SELECT CASE me$
CASE "T"
GOTO sorryer
CASE "R"
GOTO start
CASE "E"
GOTO exiter
END SELECT

