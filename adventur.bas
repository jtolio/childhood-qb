SCREEN 8
ttotp:
COLOR 1
CLS
bc:
PRINT
COLOR 1
PRINT "                     SONIC'S  ADVENTURE 1.5"
PRINT
PRINT "Welcome to Sonic's adventure game."
COLOR 6
PRINT "In this program you will try to save Tails, Sonic's friend."
cd:
PRINT
COLOR 10
PRINT "Would you like to read the story(1), play now(2), read instuctions(3),"
INPUT "quit(4), or restart and clear screen(5) >", choice
IF choice = 1 THEN GOTO story
IF choice = 2 THEN GOTO game
IF choice = 3 THEN GOTO instruct
IF choice = 4 THEN GOTO endnow
IF choice = 5 THEN GOTO ttotp

story:
CLS
COLOR 12
PRINT
PRINT "A long time ago..."
FOR i = 1 TO 10000: NEXT i
CLS
PRINT
PRINT "Sonic was running along with Tails flying behind him at super sonic speed. "
PRINT "Robotnik was hiding in a tree with his hovercraft noticing that Sonic was"
PRINT "ahead and Sonic wouldn't see him (Robotnik) steal Tails if he did. So, "
PRINT "Robotnik came up and stole Tails with his hovercraft. Sonic noticed that"
PRINT "Tails was missing and so he chased Robotnik."
PRINT
PRINT "Now it is up to you..."
GOTO cd

instruct:
COLOR 9
PRINT
PRINT "The instructions are easy. You need to decide what to do to save Tails. It's"
PRINT "like a normal adventure game (without the pictures)."
GOTO cd

game:
COLOR 4
PRINT
PRINT "You are following Robotnik. Should you keep up the chase until something"
PRINT "happens(1), try to knock the hovercraft's engine off(2), or stop and take a"
INPUT "breath(3) >", choice
IF choice = 1 THEN GOTO fol
IF choice = 2 THEN GOTO nok
IF choice = 3 THEN GOTO over

over2:
CLS
over:
COLOR 15
PRINT
PRINT "GAME OVER"
GOTO bc

fol:
COLOR 1
PRINT
PRINT "You follow Robotnik. He flys into an ocean. Then he flys into an under-ground"
PRINT "cave. You drown."
GOTO over

nok:
COLOR 2
PRINT
PRINT "You knock off the engines. Robotnik flees with Tails in his grasp. He runs to"
PRINT "his escape vehicle and flys away."
GOTO 2

endnow:
COLOR 15
CLS
PRINT "DONE"
END

2 :
COLOR 3
PRINT
PRINT "Robotnik flew away. Should you go try and find him in his hidout(1), give"
INPUT "up(2), or go to where Robotnik originally stole Tails(3) >", choice
IF choice = 1 THEN GOTO hide
IF choice = 2 THEN GOTO over
IF choice = 3 THEN GOTO were

were:
COLOR 4
PRINT
PRINT "Robotnik isn't there."
GOTO over

hide:
COLOR 5
PRINT
PRINT "You find Robotnik. Should you wreak havoc(1), screem in terror(2), or go and"
INPUT "try to rescue Tails(3) >", choice
IF choice = 1 THEN GOTO havoc
IF choice = 2 THEN GOTO terror
IF choice = 3 THEN GOTO tails

havoc:
COLOR 6
PRINT
PRINT "Good choice, but there are to many guards in Robotnik's hideout."
GOTO over

terror:
COLOR 7
PRINT
PRINT "Robotnik finds and captures you."
GOTO over

tails:
COLOR 9
PRINT
PRINT "You find Tails. Robotnik finds you. Robotnik takes Tails and gets away. Now"
PRINT "should you chase Robotnik(1), go draw cartoons at home(2), or wait 'till"
INPUT "Robotnik gets back(3) >", choice
IF choice = 1 THEN GOTO chase
IF choice = 2 THEN PRINT : PRINT "Duhh! In other words, YOU JUST GAVE UP!"
IF choice = 3 THEN PRINT : PRINT "Sorry, Robotnik's guards find you."
GOTO over

chase:
COLOR 10
PRINT
PRINT "You are following Robotnik. Robotnik hasn't seen you. Should you jump in and"
PRINT "bust his hovercraft(1), re-knock off his engines(2), or follow him until"
INPUT "something happens(3) >", choice
IF choice = 1 THEN GOTO bust
IF choice = 2 THEN GOTO nok
IF choice = 3 THEN GOTO fol

bust:
COLOR 11
PRINT
PRINT "You bust the hovercraft. Robotnik escapes once more. Should you go back to his"
PRINT "hideout(1), find something to eat(2), or wait to see if Robotnik comes"
INPUT "back(3) >", choice
IF choice = 2 THEN PRINT : PRINT "The food you ate was a Robotnik trap. Sorry."
IF choice = 3 THEN PRINT : PRINT "Robotnik doesn't come back."
IF choice = 1 THEN GOTO blo
GOTO over

blo:
COLOR 12
PRINT
PRINT "You go back to the hideout. Metal Sonic is waiting for you. He jumps at you."
INPUT "Should you run closer(1), run away(2), or jump(3) >", choice
IF choice = 1 THEN GOTO closer
IF choice = 2 THEN GOTO away
IF choice = 3 THEN GOTO jump

closer:
COLOR 13
PRINT
PRINT "He lands on you."
GOTO over

away:
COLOR 14
PRINT
PRINT "He follows and lands on you."
GOTO over

jump:
COLOR 1
PRINT
PRINT "You hit him. He blows up. Robotnik gets up from behind Metal Sonic's controls."
PRINT "Robotnik is surprised that you blew up Metal Sonic. He gives up. You get Tails."
PRINT "Tails is joyful"
COLOR 2
PRINT
PRINT "THANKS!!"
PRINT
COLOR 3
PRINT
INPUT "Do you want to play again(1) or quit(2) >", choice
IF choice = 1 THEN GOTO ttotp
IF choice = 2 THEN GOTO endnow

