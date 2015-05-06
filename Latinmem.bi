CLS
PRINT "(C) JT OLDS 1997"
PRINT "This is case sensative. Push the CAPS LOCK button down."
PRINT "Loading. Please wait."
FOR i = 1 TO 10000: NEXT i
INPUT "Press ENTER to go on.", clm978964476$
start:
SCREEN 8
COLOR 12
PRINT
PRINT
PRINT "                    Welcome to JT's Latin Memorizer 2.0"
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
lm97 = 0
PRINT "Okay what does " + choice9$ + " mean in English?": INPUT " >", answer1$
IF answer1$ = choice10$ THEN GOTO next1 ELSE
IF answer1$ = "1" THEN GOTO ender
lm97 = lm97 - 1
COLOR 9: PRINT "Sorry, that was wrong."
next1:
lm97 = lm97 + 1
COLOR 10
PRINT "What does " + choice1$ + " mean?": INPUT " >", answer1$
IF answer1$ = choice2$ THEN GOTO next2 ELSE
IF answer1$ = "1" THEN GOTO ender
lm97 = lm97 - 1
COLOR 9: PRINT "Sorry, that was wrong."
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
lm97 = lm97 + 1
COLOR 12
PRINT "What does " + choice7$ + " mean?": INPUT " >", answer1$
IF answer1$ = choice8$ THEN GOTO next3 ELSE
IF answer1$ = "1" THEN GOTO ender
lm97 = lm97 - 1
COLOR 9: PRINT "Sorry, that was wrong."
next3:
lm97 = lm97 + 1
COLOR 10
PRINT "What does " + choice3$ + " mean?": INPUT " >", answer1$
IF answer1$ = choice4$ THEN GOTO next4 ELSE
IF answer1$ = "1" THEN GOTO ender
lm97 = lm97 - 1
COLOR 9: PRINT "Sorry, that was wrong."
next4:
lm97 = lm97 + 1
COLOR 12
PRINT "What does " + choice5$ + " mean?": INPUT " >", answer1$
IF answer1$ = choice6$ THEN GOTO next5 ELSE
IF answer1$ = "1" THEN GOTO ender
lm97 = lm97 - 1
COLOR 9: PRINT "Sorry, that was wrong."
next5:
lm97 = lm97 + 1
COLOR 10
PRINT "What does " + choice15$ + " mean?": INPUT " >", answer1$
IF answer1$ = choice16$ THEN GOTO next6 ELSE
IF answer1$ = "1" THEN GOTO ender
lm97 = lm97 - 1
COLOR 9: PRINT "Sorry, that was wrong."
next6:
lm97 = lm97 + 1
COLOR 12
PRINT "What does " + choice11$ + " mean?": INPUT " >", answer1$
IF answer1$ = choice12$ THEN GOTO next7 ELSE
IF answer1$ = "1" THEN GOTO ender
lm97 = lm97 - 1
COLOR 9: PRINT "Sorry, that was wrong."
next7:
lm97 = lm97 + 1
COLOR 10
PRINT "What does " + choice17$ + " mean?": INPUT " >", answer1$
IF answer1$ = choice18$ THEN GOTO next8 ELSE
IF answer1$ = "1" THEN GOTO ender
lm97 = lm97 - 1
COLOR 9: PRINT "Sorry, that was wrong."
next8:
lm97 = lm97 + 1
COLOR 12
PRINT "What does " + choice13$ + " mean?": INPUT " >", answer1$
IF answer1$ = choice14$ THEN GOTO next9 ELSE
IF answer1$ = "1" THEN GOTO ender
lm97 = lm97 - 1
COLOR 9: PRINT "Sorry, that was wrong."
next9:
lm97 = lm97 + 1
COLOR 10
PRINT "What does " + choice19$ + " mean?": INPUT " >", answer1$
IF answer1$ = choice20$ THEN GOTO goody ELSE
IF answer1$ = "1" THEN GOTO ender
lm97 = lm97 - 1
COLOR 9: PRINT "Sorry, that was wrong."
goody:
lm97 = lm97 + 1
PRINT
COLOR 12
PRINT "WHOOPY!!!"
COLOR 10
PRINT "YOU DID IT!!!"
PLAY "edegede"
COLOR 12
GOTO chooserly
returner:
COLOR 10
PRINT "Do you want to try the same (T)est again, (R)estart the whole program, or"
COLOR 12
INPUT "(E)xit? >", me$
SELECT CASE me$
CASE "T"
GOTO clsy
CASE "R"
GOTO start
CASE "E"
GOTO exiter
END SELECT
chooserly:
IF lm97 = 0 THEN GOSUB 0
IF lm97 = 1 THEN GOSUB 1
IF lm97 = 2 THEN GOSUB 2
IF lm97 = 3 THEN GOSUB 3
IF lm97 = 4 THEN GOSUB 4
IF lm97 = 5 THEN GOSUB 5
IF lm97 = 6 THEN GOSUB 6
IF lm97 = 7 THEN GOSUB 7
IF lm97 = 8 THEN GOSUB 8
IF lm97 = 9 THEN GOSUB 9
IF lm97 = 10 THEN GOSUB 10
GOTO returner
0 :
PRINT "YOUR SCORE WAS 0/10!"
RETURN
1 :
PRINT "YOUR SCORE WAS 1/10!"
RETURN
2 :
PRINT "YOUR SCORE WAS 2/10!"
RETURN
3 :
PRINT "YOUR SCORE WAS 3/10!"
RETURN
4 :
PRINT "YOUR SCORE WAS 4/10!"
RETURN
5 :
PRINT "YOUR SCORE WAS 5/10!"
RETURN
6 :
PRINT "YOUR SCORE WAS 6/10!"
RETURN
7 :
PRINT "YOUR SCORE WAS 7/10!"
RETURN
8 :
PRINT "YOUR SCORE WAS 8/10!"
RETURN
9 :
PRINT "YOUR SCORE WAS 9/10!"
RETURN
10 :
PRINT "YOUR SCORE WAS 10/10!"
RETURN

