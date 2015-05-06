ttotp:
CLS
PRINT
PRINT "                     GAME CODES v. 1.0"
PRINT
PRINT "Welcome to JT's game code program!"
PRINT "This program enables you to see JT's most important codes."
cd:
PRINT "Do you want codes A-F (1), G-M (2), N-T (3), U-Z (4), or do you want to quit(5),"
INPUT "or restart the program and clear the screen(6) >", choice
IF choice = 1 THEN GOTO af
IF choice = 2 THEN GOTO gm
IF choice = 3 THEN GOTO nt
IF choice = 4 THEN GOTO uz
IF choice = 5 THEN GOTO endnow
IF choice = 6 THEN GOTO ttotp

af:
PRINT
PRINT "Welcome to option A-F! Please wait while the A-F index loads..."
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "Now please watch for your game and the game number beside it..."
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "Cruisin' USA: N64 (1)"
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "Desert Speed Trap: Game Gear: Game Genie: Looney Toones (2)"
PRINT
FOR i = 1 TO 10000: NEXT i
INPUT "Now please type the game number here >", choice
IF choice = 1 THEN GOTO crusa
IF choice = 2 THEN GOTO dst

crusa:
PRINT
PRINT
PRINT "CRUSIN' USA:N64"
PRINT "________________________________________________________________________________"
PRINT "BE A BUS, POLICE CAR, OR JEEP"
PRINT
PRINT "When you get to select your car, you can change the 3 left cars into a bus,"
PRINT "police car, or jeep by pressing leftC, upC, and downC at the same time. Then"
PRINT "hold them until you press start."
PRINT "--------------------------------------------------------------------------------"
PRINT "SIRENS AND LIGHTS FOR THE BUS AND THE POLICE CAR"
PRINT
PRINT "First select the bus or the police car (the police car has a bigger effect)."
PRINT "Then get a hot/record time. Type your name. Now, with the joystick on the"
PRINT "middle handle, pull down until you see the rollers. Next, use the same"
PRINT "joystick, pull left for about 40 seconds. A head will roll across saying: I"
PRINT "love this job! Continue with the next race. Start going normally. Now press"
PRINT "BRAKE, BRAKE, and then hold GAS. As soon as you let go of GAS, it stops. It"
PRINT "only works one time. If you want to do it again, you must start over."
PRINT "--------------------------------------------------------------------------------"
PRINT
GOTO cd

dst:
PRINT
PRINT
PRINT "DESERT SPEED TRAP:GAME GEAR:GAME GENIE:LOONEY TOONES"
PRINT "________________________________________________________________________________"
PRINT "A UNIVERSAL, ALL TIME CODE"
PRINT
PRINT "001*59B*A2A*C31*A8B*E61"
PRINT "--------------------------------------------------------------------------------"
PRINT
GOTO cd

endnow:
CLS
PRINT "DONE"
END

gm:
PRINT
PRINT "Welcome to option G-M! Please wait while the G-M index loads..."
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "Now please watch for your game and the game number beside it..."
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "Mario64: N64 (1)"
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "MarioKart64: N64 (2)"
PRINT
FOR i = 1 TO 10000: NEXT i
INPUT "Now please type the game number here >", choice
IF choice = 1 THEN GOTO mario
IF choice = 2 THEN GOTO kart

mario:
PRINT
PRINT
PRINT "MARIO64:N64"
PRINT "________________________________________________________________________________"
PRINT "MEET YOSHI"
PRINT
PRINT "As soon as you get all 120 stars, goto the grate that has been closed the"
PRINT "whole game (the one by the lake). Now get in the cannon and shoot yourself"
PRINT "on the roof. You'll see Yoshi and a flying cap box. Yoshi will tell you that"
PRINT "he has been asked to wait for you on the roof. He will refill you with 100"
PRINT "lives. Do a Triple jump and he will turn invincible. You can also play around"
PRINT "with the flying hat. With the 100 lives you can explore the castle to further"
PRINT "extent."
PRINT "--------------------------------------------------------------------------------"
PRINT "BEAT THE FINAL GUY"
PRINT
PRINT "Get to the final guy. Go FACE a bomb. Make him charge at you. Do a back flip"
PRINT "over him. Grab him by the tail. Make him hit the bomb you were facing. Do the"
PRINT "process over again. Now grab him and kill him like you did the first final"
PRINT "guy (grab him, swing around fast, aim while you swing fast, throw him at the"
PRINT "bomb."
PRINT "--------------------------------------------------------------------------------"
INPUT "Please press enter to go on >", choice
IF choice = 1 THEN GOTO goon1
goon1:
PRINT "--------------------------------------------------------------------------------"
PRINT "LIFE FACTORY (FOR THE FINAL GUY)"
PRINT
PRINT "Goto the final guy level. As soon as you're near the green tube and the wind is"
PRINT "blowing at you, go behind the farthest, left-hand, square pillar. You should"
PRINT "get a life. Now go try and beat Bouser. If you don't, go get that life again."
PRINT "It will be there. You can use this trick infinitly."
PRINT "--------------------------------------------------------------------------------"
PRINT
GOTO cd

kart:
PRINT
PRINT
PRINT "MarioKart64"
PRINT "________________________________________________________________________________"
PRINT "SHARP TURN"
PRINT
PRINT "While you turn, repeatedly press R."
PRINT "--------------------------------------------------------------------------------"
PRINT "SPIN TURN"
PRINT
PRINT "Stop, then press B and A, hold them down and turn."
PRINT "--------------------------------------------------------------------------------"
PRINT "SLIDE"
PRINT
PRINT "While you turn, press R, hold and TRY to turn the other way (assuming that"
PRINT "you turned the first way until you held R)."
PRINT "--------------------------------------------------------------------------------"
PRINT "ROCKET START"
PRINT
PRINT "If you press go when, RIGHT WHEN the light turns blue, you will have a rocket"
PRINT "start."
PRINT "--------------------------------------------------------------------------------"
INPUT "Please press enter to go on >", choice
IF choice = 1 THEN GOTO goon2
goon2:
PRINT "--------------------------------------------------------------------------------"
PRINT "SHORTCUT ON KOOPA-TROOPA BEACH"
PRINT
PRINT "The first part of the trick is to get a rocket boost and save it. Now goto the"
PRINT "jump that is close to the hole in the mountain. USE THE ROCKET BOOST TO FLY OFF"
PRINT "THE JUMP! Aim for the hole. If you make it you will come out the waterfall."
PRINT "--------------------------------------------------------------------------------"
PRINT "ENOUGH SPEED TO PASS"
PRINT
PRINT "All you have to do is get behind the person you are trying to pass (like, so"
PRINT "close you're touching them). You'll see smoke coming out the back of you so you"
PRINT "look like a peacok. Now you get enough power to pass them."
PRINT "--------------------------------------------------------------------------------"
PRINT "DON'T SLIP ON BANANAS"
PRINT
PRINT "This trick works good on Battle Mode. If you hit a banana, slam the brakes down."
PRINT "This prevents you from spinning out and losing a ballon."
PRINT "--------------------------------------------------------------------------------"
PRINT
GOTO cd

uz:
END

nt:
PRINT
PRINT "Welcome to option N-T! Please wait while the N-T index loads..."
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "Now please watch for your game and the game number beside it..."
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "NBA JAM: SuperNES (1)"
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "NBA JAM T.E.: Game Gear: Game Genie (2)"
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "Sonic The Hedgehog: Genesis (3)"
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "Sonic The Hedgehog: Game Gear: Game Genie (4)"
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "Sonic 2: Genesis (5)"
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "Sonic 2: Game Gear (6)"
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "Sonic 3: Genesis (7)"
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "Sonic Chaos: Game Gear (8)"
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "Sonic Drift: Game Gear: Game Genie (9)"
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "Sonic Triple Trouble: Game Gear: Game Genie (10)"
PRINT
FOR i = 1 TO 10000: NEXT i
PRINT "Taz in Escape From Mars: Game Gear: Game Genie (11)"
PRINT
FOR i = 1 TO 10000: NEXT i
INPUT "Now please type the game number here >", choice
IF choice = 1 THEN GOTO 11
IF choice = 2 THEN GOTO 22
IF choice = 3 THEN GOTO 33
IF choice = 4 THEN GOTO 44
IF choice = 5 THEN GOTO 55
IF choice = 6 THEN GOTO 66
IF choice = 7 THEN GOTO 77
IF choice = 8 THEN GOTO 88
IF choice = 9 THEN GOTO 99
IF choice = 10 THEN GOTO 1010
IF choice = 11 THEN GOTO 1111


66 :
55 :
77 :
88 :
99 :
1010 :
1111 :
END


11 :
PRINT
PRINT
PRINT "NBA JAM:SUPER NES"
PRINT "________________________________________________________________________________"
PRINT "HIDDEN CHARACTERS"
PRINT
PRINT "First, you must do the `type in your name` option. Then enter the first TWO"
PRINT "initials and then highlight the last one (but don't select it). Now hold L,R,"
PRINT "START, and the required button (A or X)."
PRINT
PRINT
PRINT "CHARCTER       | INITIALS | BUTTON    "
PRINT "---------------|----------|-----------"
PRINT "Bill Clinton   | ARK      | X"
PRINT "Al Gore        | NET      | A"
PRINT "Rivett         | RJR      | X"
PRINT "Divita         | SAL      | X"
PRINT "Weasil         | SAX      | X"
PRINT "--------------------------------------------------------------------------------"
PRINT
GOTO cd

22 :
PRINT
PRINT
PRINT "NBA JAM T.E.:GAME GEAR:GAME GENIE"
PRINT "________________________________________________________________________________"
PRINT "HIDDEN CHARACTERS"
PRINT
PRINT "00A*CE6*E62*217*02D*6E2 +"
PRINT
PRINT "(MUST have above before the rest)"
PRINT
PRINT "017*03D*B3E=Bill Clinton"
PRINT "027*03D*B3E=Hillary Clinton"
PRINT "037*03D*B3E=Sun's Gorilla"
PRINT "047*03D*B3E=Heavy D"
PRINT "057*03D*B3E=Jazzy Jeff"
PRINT "067*03D*B3E=Fresh Prince"
PRINT "077*03D*B3E=Thomas"
PRINT "087*03D*B3E=Cunningham"
PRINT "097*03D*B3E=Bird"
PRINT "0A7*03D*B3E=Mike D"
PRINT "0B7*03D*B3E=ADROCK"
PRINT "0C7*03D*B3E=MCA"
PRINT "0D7*03D*B3E=Hugo"
PRINT "0E7*03D*B3E=Crunch"
PRINT "--------------------------------------------------------------------------------"
PRINT
GOTO cd

33 :
PRINT
PRINT
PRINT "SONIC THE HEDGEHOG:GENESIS"
PRINT "________________________________________________________________________________"
PRINT "LEVEL SELECT"
PRINT
PRINT "Press UP, DOWN, LEFT, and RIGHT (in order) then hold A and START."
PRINT "--------------------------------------------------------------------------------"
PRINT "SIX EMERALDS"
PRINT
PRINT "Using the stage select cheat, select special stage and get an emerald. When the "
PRINT "game is adding up your score, reset your Genesis. Repeat this process until you"
PRINT "have all six emeralds. Then start at Green Hill like you normally would."
PRINT "--------------------------------------------------------------------------------"
PRINT
GOTO cd

44 :
PRINT
PRINT
PRINT "SONIC THE HEDGEHOG:GAME GEAR:GAME GENIE"
PRINT "________________________________________________________________________________"
PRINT "WARP TO LAST LEVEL"
PRINT
PRINT "003*8CE*5D4*0F3*88E*91A"
PRINT "--------------------------------------------------------------------------------"
PRINT "ALWAYS BREATH IN WATER"
PRINT
PRINT "2A2*86A*6E2"
PRINT "--------------------------------------------------------------------------------"
PRINT
GOTO cd


