DECLARE SUB win ()
DECLARE SUB date ()
DECLARE SUB ctime ()
DECLARE SUB cdate ()
DECLARE SUB time ()
DECLARE SUB wolftime ()
DECLARE SUB mainscreen ()
DECLARE SUB wolfdos ()
DECLARE SUB ender ()
DECLARE SUB help ()
DECLARE SUB screen13 ()
ON ERROR GOTO handler
IF INSTR(UCASE$(COMMAND$), "/WIN") THEN win
IF INSTR(UCASE$(COMMAND$), "/WT") THEN wolftime
IF INSTR(UCASE$(COMMAND$), "/S") > 0 THEN screen13
IF INSTR(UCASE$(COMMAND$), "/?") > 0 THEN help
IF INSTR(UCASE$(COMMAND$), "/W") THEN wolfdos
IF INSTR(UCASE$(COMMAND$), "/M") THEN mainscreen
IF INSTR(UCASE$(COMMAND$), "/T") THEN time
IF INSTR(UCASE$(COMMAND$), "/D") THEN date
IF INSTR(UCASE$(COMMAND$), "/CT") THEN ctime
IF INSTR(UCASE$(COMMAND$), "/CD") THEN cdate
help
handler:
PRINT "Unexpected Error... Quiting."
ender
15
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  4059 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2011 ,  2011 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2011 ,  2011 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2011 ,  2267 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2267 ,  2011 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2011 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2011 ,  2267 ,  2267 ,  2011 ,  2011 ,  2267 ,  2267 ,  2011 ,  2011
DATA  2267 ,  2011 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2011 ,  2267 ,  2267 ,  2011 ,  2267 ,  2011 ,  2267 ,  2267
DATA  2011 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2011 ,  2011 ,  2011 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2011 ,  2011 ,  2011 ,  2267 ,  2011 ,  2267 ,  2011
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2011 ,  2011 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2011 ,  2011 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2011 ,  2267 ,  2267 ,  2011 ,  2011 ,  2011 ,  2267 ,  2267 ,  2267
DATA  2011 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2011 ,  2011 ,  2011 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2011 ,  2011 ,  2011 ,  2267 ,  2011 ,  2011 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2011 ,  2267 ,  2267 ,  2011 ,  2267 ,  2011 ,  2267 ,  2267 ,  2011
DATA  2267 ,  2011 ,  2267 ,  2267 ,  2267 ,  2011 ,  2011 ,  2267 ,  2267 ,  2011
DATA  2267 ,  2011 ,  2011 ,  2267 ,  2267 ,  2011 ,  2011 ,  2267 ,  2011 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2011 ,  2011 ,  2267 ,  2267 ,  2011 ,  2267 ,  2011 ,  2267 ,  2267 ,  2011
DATA  2267 ,  2011 ,  2267 ,  2267 ,  2011 ,  2267 ,  2267 ,  2267 ,  2267 ,  2011
DATA  2011 ,  2011 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2011 ,  2011 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2011 ,  2267 ,  2267 ,  2011 ,  2011 ,  2267 ,  2011 ,  2267 ,  2267 ,  2011
DATA  2267 ,  2011 ,  2267 ,  2267 ,  2011 ,  2267 ,  2267 ,  2267 ,  2267 ,  2011
DATA  2011 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267 ,  2267
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011
DATA  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011 ,  2011

SUB cdate
PRINT "The date is :"; DATE$
LINE INPUT "What do you want the date to be? [yy/mm/dd] >", temp$
DATE$ = temp$
ender
END SUB

SUB ctime
PRINT "The time is :"; TIME$
LINE INPUT "What do you want the time to be? [hh/mm/ss] >", temp$
TIME$ = temp$
ender
END SUB

SUB date
PRINT DATE$
ender
END SUB

SUB ender
END
END SUB

SUB help
PRINT
PRINT "WolfWare Howlin' Things 1.0"
PRINT
PRINT "Switches: /S    Screen Saver"
PRINT "          /?    Help (This Screen)"
PRINT "          /W    WolfDOS"
PRINT "          /M    WolfHowl main screen"
PRINT "          /WT   WolfDOS with Real-Time"
PRINT "          /T    Display Time"
PRINT "          /D    Display Date"
PRINT "          /CT   Change Computer's Time"
PRINT "          /CD   Change Computer's Date"
PRINT "          /WIN  WolfHowl for Windows"
PRINT "Syntax: WOLFHOWL [switch]"
PRINT
ender
END SUB

SUB mainscreen
DIM a(22, 80)
CLS
RESTORE 15
FOR i = 1 TO 22
FOR j = 1 TO 80
READ a(i, j)
NEXT j
NEXT i
FOR i = 1 TO 22
FOR j = 1 TO 80
LOCATE i, j
COLOR FIX(a(i, j) / 256)
PRINT CHR$(a(i, j) MOD 256)
NEXT j
NEXT i
FOR i = 1 TO 22
FOR j = 1 TO 80
a(i, j) = 15 * 256 + 32
NEXT j
NEXT i
ender
END SUB

SUB screen13
SCREEN 13
start:
FOR i = 0 TO 255
COLOR i
IF INKEY$ > CHR$(0) THEN ender
PRINT "����������������������������������������"
NEXT i
GOTO start
END SUB

SUB time
PRINT TIME$
ender
END SUB

SUB win
PRINT
PRINT "WolfWare Howlin' Things 1.0"
PRINT
PRINT "Switches: /S   Screen Saver"
PRINT "          /W   WolfDOS"
PRINT "          /M   WolfHowl main screen"
PRINT "          /WT  WolfDOS with Real-Time"
PRINT "          /T   Display Time"
PRINT "          /D   Display Date"
PRINT "          /CT  Change Computer's Time"
PRINT "          /CD  Change Computer's Date"
PRINT "          /E   Exit"
PRINT "Syntax: [switch]"
PRINT
LINE INPUT ">", temp$
IF UCASE$(temp$) = "/S" THEN screen13
IF UCASE$(temp$) = "/W" THEN wolfdos
IF UCASE$(temp$) = "/M" THEN mainscreen
IF UCASE$(temp$) = "/WT" THEN wolftime
IF UCASE$(temp$) = "/T" THEN time
IF UCASE$(temp$) = "/D" THEN date
IF UCASE$(temp$) = "/CT" THEN ctime
IF UCASE$(temp$) = "/CD" THEN cdate
IF UCASE$(temp$) = "/E" THEN ender
ender
END SUB

SUB wolfdos
PRINT
PRINT "WolfDOS 1.0"
PRINT
PRINT "Type EXIT to exit."
PRINT
commanding:
SHELL "cd"
LINE INPUT ">", commanded$
IF commanded$ = "" THEN GOTO commanding
IF UCASE$(commanded$) = "EXIT" THEN ender
SHELL commanded$
GOTO commanding
END SUB

SUB wolftime
PRINT
PRINT "WolfDOS 1.0"
PRINT
PRINT "Type EXIT to exit."
PRINT
commandingtime:
SHELL "cd"
LOCATE 23, 72: PRINT TIME$
LINE INPUT ">", commanded$
IF commanded$ = "" THEN GOTO commandingtime
IF UCASE$(commanded$) = "EXIT" THEN ender
SHELL commanded$
GOTO commandingtime
END SUB
