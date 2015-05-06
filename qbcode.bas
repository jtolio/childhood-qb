DECLARE SUB MouseDriver (AX%, bx%, CX%, DX%)
DECLARE SUB mouseshow ()
DECLARE SUB mousestatus (lb%, rb%, xmouse%, ymouse%)
ON ERROR GOTO Handler
IF INSTR(UCASE$(COMMAND$), "-?") > 0 THEN GOTO prompthelp
DIM SHARED whichprog
DIM qbcintro(23, 80)
DIM SHARED Mouse$
pagenum = 50
linenum = pagenum * 22
linenum = linenum + 1
DIM word$(linenum)
ttotp:
memprog = 0
whichprog = 0
temp = 0
versionnumber$ = "5.1"
RESTORE
Mouse$ = SPACE$(57)
FOR i% = 1 TO 57
READ a$
H$ = CHR$(VAL("&H" + a$))
MID$(Mouse$, i%, 1) = H$
NEXT i%
DATA 55,89,E5,8B,5E,0C,8B,07,50,8B,5E,0A,8B,07,50,8B
DATA 5E,08,8B,0F,8B,5E,06,8B,17,5B,58,1E,07,CD,33,53
DATA 8B,5E,0C,89,07,58,8B,5E,0A,89,07,8B,5E,08,89,0F
DATA 8B,5E,06,89,17,5D,CA,08,00
CLS
paintneeded = 0
page = 1
mouseshow
IF COMMAND$ > CHR$(0) THEN where$ = UCASE$(COMMAND$): where$ = LTRIM$(where$): where$ = RTRIM$(where$): GOTO opener45j
qbcintro:
CLS
COLOR 15, 0: LOCATE 1, 1: PRINT " F"; : COLOR 7, 0: PRINT "ile    "; : COLOR 15, 0: PRINT "E"; : COLOR 7, 0
PRINT "dit    "; : COLOR 15, 0: PRINT "R"; : COLOR 7, 0: PRINT "un": COLOR 15, 0: LOCATE 1, 67: PRINT "H"; : COLOR 7, 0
PRINT "elp    E"; : COLOR 15, 0: PRINT "x"; : COLOR 7, 0: PRINT "it": COLOR 1, 0
FOR y = 2 TO 23
FOR x = 1 TO 80
LOCATE y, x: PRINT CHR$(219)
NEXT x
NEXT y
COLOR 2, 1
LOCATE 13, 23
PRINT "     QBCode PLUS! Version " + versionnumber$
COLOR 4, 1
LOCATE 14, 23
PRINT "(C) WolfWare Interactive, Inc. '98"
COLOR 7, 1
LOCATE 23, 55
PRINT "Press a key to continue..."
COLOR 7, 0
LOCATE 1, 32
PRINT "X"; x; "Y"; y; "LB"; lb; "RB"; rb; "Page:"; page; "  "
dlop:
GOSUB inputing
IF key$ > CHR$(0) THEN GOTO qbcintroafter
GOTO dlop
qbcintroafter:
CLS
COLOR 0, 0
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
start:
GOTO bluemenu
start2:
mousestatus lb%, rb%, xmouse%, ymouse%
lm$ = INKEY$
lb = lb% + 2: IF lb = 2 THEN lb = 0
rb = rb% + 2: IF rb = 2 THEN rb = 0
x = xmouse% / 8 + 1
y = ymouse% / 8 + 1
COLOR 7, 0
LOCATE 1, 32
PRINT "X"; x; "Y"; y; "LB"; lb; "RB"; rb; "Page:"; page; "  "
IF lm$ = CHR$(27) THEN CLS : COLOR 15, 0: END
IF lm$ = CHR$(102) THEN GOTO filemenu
IF lm$ = CHR$(70) THEN GOTO filemenu
IF lm$ = CHR$(101) THEN GOTO editmenu
IF lm$ = CHR$(69) THEN GOTO editmenu
IF lm$ = CHR$(114) THEN GOTO runmenu
IF lm$ = CHR$(82) THEN GOTO runmenu
IF lm$ = CHR$(104) THEN GOTO helpmenu
IF lm$ = CHR$(72) THEN GOTO helpmenu
IF lm$ = CHR$(120) THEN CLS : COLOR 15, 0: END
IF lm$ = CHR$(88) THEN END
IF lb = 1 THEN IF x = 2 THEN IF y = 1 THEN GOTO filemenu
IF lb = 1 THEN IF x = 10 THEN IF y = 1 THEN GOTO editmenu
IF lb = 1 THEN IF x = 18 THEN IF y = 1 THEN GOTO runmenu
IF lb = 1 THEN IF x = 67 THEN IF y = 1 THEN GOTO helpmenu
IF lb = 1 THEN IF rb = 0 THEN IF x = 76 THEN IF y = 1 THEN CLS : COLOR 15, 0: END
IF lb = 1 THEN IF rb = 0 THEN IF y >= 2 THEN IF y <= 23 THEN GOTO lines
GOTO start2
bluemenu:
CLS
COLOR 1, 0
FOR y = 2 TO 23
FOR x = 1 TO 80
LOCATE y, x: PRINT CHR$(219)
NEXT x
NEXT y
COLOR 15, 1
GOSUB pageprinter
COLOR 15, 0: LOCATE 1, 1: PRINT " F"; : COLOR 7, 0: PRINT "ile    "; : COLOR 15, 0: PRINT "E"; : COLOR 7, 0
PRINT "dit    "; : COLOR 15, 0: PRINT "R"; : COLOR 7, 0: PRINT "un                                                 "
COLOR 15, 0: LOCATE 1, 67: PRINT "H"; : COLOR 7, 0: PRINT "elp    E"; : COLOR 15, 0: PRINT "x"; : COLOR 7, 0: PRINT "it  "
GOTO start2
lineinput:
COLOR 7, 0
LOCATE 1, 32
PRINT "Line "; y - 1; " being edited             "
COLOR 15, 1
LOCATE y, 1: LINE INPUT "", inputed$
inputed$ = LEFT$(inputed$, 80)
COLOR 15, 0
RETURN
filemenu:
COLOR 0, 7
LOCATE 2, 1: PRINT "ษออออออออออออออออออป"
LOCATE 3, 1: PRINT "บ New              บ"
LOCATE 4, 1: PRINT "บ Save             บ"
LOCATE 5, 1: PRINT "บ Open             บ"
LOCATE 6, 1: PRINT "ฬออออออออออออออออออน"
LOCATE 7, 1: PRINT "บ Print            บ"
LOCATE 8, 1: PRINT "บ OS Shell         บ"
LOCATE 9, 1: PRINT "ฬออออออออออออออออออน"
LOCATE 10, 1: PRINT "บ Cancel           บ"
LOCATE 11, 1: PRINT "บ Exit             บ"
LOCATE 12, 1: PRINT "ศออออออออออออออออออผ"
COLOR 15, 7
LOCATE 3, 3: PRINT "N"
LOCATE 4, 3: PRINT "S"
LOCATE 5, 3: PRINT "O"
LOCATE 7, 3: PRINT "P"
LOCATE 8, 7: PRINT "h"
LOCATE 11, 3: PRINT "E"
LOCATE 10, 3: PRINT "C"
doloop:
mousestatus lb%, rb%, xmouse%, ymouse%
lm$ = INKEY$
lb = lb% + 2: IF lb = 2 THEN lb = 0
rb = rb% + 2: IF rb = 2 THEN rb = 0
x = xmouse% / 8 + 1
y = ymouse% / 8 + 1
LOCATE 1, 32
COLOR 7, 0
PRINT "X"; x; "Y"; y; "LB"; lb; "RB"; rb; "Page:"; page; "  "
IF lb = 1 THEN IF rb = 0 THEN IF x = 3 THEN IF y = 3 THEN GOTO new
IF lb = 1 THEN IF rb = 0 THEN IF y = 4 THEN IF x = 3 THEN GOTO save
IF lb = 1 THEN IF rb = 0 THEN IF y = 5 THEN IF x = 3 THEN GOTO opener
IF lb = 1 THEN IF rb = 0 THEN IF y = 7 THEN IF x = 3 THEN GOTO printer
IF lb = 1 THEN IF rb = 0 THEN IF y = 8 THEN IF x = 7 THEN CLS : COLOR 15, 0: SHELL: GOTO start
IF lb = 1 THEN IF rb = 0 THEN IF y = 10 THEN IF x = 3 THEN GOTO start
IF lb = 1 THEN IF rb = 0 THEN IF y = 11 THEN IF x = 3 THEN CLS : COLOR 15, 0: END
IF lm$ = "N" THEN GOTO new
IF lm$ = "n" THEN GOTO new
IF lm$ = "S" THEN GOTO save
IF lm$ = "s" THEN GOTO save
IF lm$ = "O" THEN GOTO opener
IF lm$ = "o" THEN GOTO opener
IF lm$ = "P" THEN GOTO printer
IF lm$ = "p" THEN GOTO printer
IF lm$ = "H" THEN CLS : COLOR 15, 0: SHELL: GOTO start
IF lm$ = "h" THEN CLS : COLOR 15, 0: SHELL: GOTO start
IF lm$ = "C" THEN GOTO start
IF lm$ = "c" THEN GOTO start
IF lm$ = "E" THEN CLS : COLOR 15, 0: END
IF lm$ = "e" THEN CLS : COLOR 15, 0: END
GOTO doloop
new:
FOR i = 1 TO linenum
word$(i) = ""
NEXT i
GOTO start
save:
COLOR 0, 7
LOCATE 8, 22: PRINT "ษออออออออออออออออออออออออออออออออออออออออออป"
LOCATE 9, 22: PRINT "บ Where is it to be saved                  บ"
LOCATE 10, 22: PRINT "บ [drive]:\[folder(s)]\[nameoffile].[ext.] บ"
LOCATE 11, 22: PRINT "บ "
LOCATE 11, 64: PRINT " บ"
LOCATE 12, 22: PRINT "ศออออออออออออออออออออออออออออออออออออออออออผ"
COLOR 15, 0
LOCATE 11, 24: PRINT "                                        "
LOCATE 11, 24: LINE INPUT ">", where$
OPEN where$ FOR OUTPUT AS #1
FOR i = 2 TO linenum
PRINT #1, word$(i)
NEXT i
CLOSE #1
GOTO start
opener:
COLOR 0, 7
LOCATE 8, 22: PRINT "ษออออออออออออออออออออออออออออออออออออออออออป"
LOCATE 9, 22: PRINT "บ Where is the file to be opened?          บ"
LOCATE 10, 22: PRINT "บ [drive]:\[folder(s)]\[nameoffile].[ext.] บ"
LOCATE 11, 22: PRINT "บ "
LOCATE 11, 64: PRINT " บ"
LOCATE 12, 22: PRINT "ศออออออออออออออออออออออออออออออออออออออออออผ"
COLOR 15, 0
LOCATE 11, 24: PRINT "                                        "
LOCATE 11, 24: LINE INPUT ">", where$
opener45j:
IF INSTR(UCASE$(where$), ".EXE") > 0 THEN COLOR 15, 0: CLS : PRINT : PRINT "Cannot open executables.": PRINT : END
OPEN where$ FOR INPUT AS #1
i = 2
DO WHILE NOT EOF(1) AND i <= linenum
LINE INPUT #1, temp$
temp$ = LEFT$(temp$, 80)
word$(i) = temp$
i = i + 1
LOOP
CLOSE #1
GOTO start
printer:
OPEN "LPT1" FOR OUTPUT AS #1
FOR i = 2 TO linenum
PRINT #1, word$(i)
NEXT i
PRINT #1, ""
CLOSE #1
GOTO start
lines:
GOSUB lineinput
temp = page - 1
temp = temp * 22
temp = temp + y
word$(temp) = inputed$
GOTO start
editmenu:
COLOR 0, 7
LOCATE 2, 1: PRINT "ษออออออออออออออออออป"
LOCATE 3, 1: PRINT "บ Select Page      บ"
LOCATE 4, 1: PRINT "บ Next Page        บ"
LOCATE 5, 1: PRINT "บ Previous Page    บ"
LOCATE 6, 1: PRINT "บ Search           บ"
LOCATE 7, 1: PRINT "ฬออออออออออออออออออน"
LOCATE 8, 1: PRINT "บ Cancel           บ"
LOCATE 9, 1: PRINT "ศออออออออออออออออออผ"
COLOR 15, 7
LOCATE 3, 3: PRINT "S"
LOCATE 4, 3: PRINT "N"
LOCATE 5, 3: PRINT "P"
LOCATE 6, 4: PRINT "e"
LOCATE 8, 3: PRINT "C"
doloop2:
mousestatus lb%, rb%, xmouse%, ymouse%
lm$ = INKEY$
lb = lb% + 2: IF lb = 2 THEN lb = 0
rb = rb% + 2: IF rb = 2 THEN rb = 0
x = xmouse% / 8 + 1
y = ymouse% / 8 + 1
LOCATE 1, 32
COLOR 7, 0
PRINT "X"; x; "Y"; y; "LB"; lb; "RB"; rb; "Page:"; page; "  "
IF lb = 1 THEN IF rb = 0 THEN IF y = 3 THEN IF x = 3 THEN GOTO page
IF lb = 1 THEN IF rb = 0 THEN IF y = 4 THEN IF x = 3 THEN GOTO nexter
IF lb = 1 THEN IF rb = 0 THEN IF y = 5 THEN IF x = 3 THEN GOTO previous
IF lb = 1 THEN IF rb = 0 THEN IF y = 6 THEN IF x = 4 THEN GOTO search
IF lb = 1 THEN IF rb = 0 THEN IF y = 8 THEN IF x = 3 THEN GOTO start
IF lm$ = "N" THEN GOTO nexter
IF lm$ = "n" THEN GOTO nexter
IF lm$ = "S" THEN GOTO page
IF lm$ = "s" THEN GOTO page
IF lm$ = "P" THEN GOTO previous
IF lm$ = "p" THEN GOTO previous
IF lm$ = "C" THEN GOTO start
IF lm$ = "c" THEN GOTO start
IF UCASE$(lm$) = "E" THEN GOTO search
GOTO doloop2
nexter:
IF page = pagenum THEN page = 1: GOTO start
page = page + 1
GOTO start
page:
COLOR 0, 7
LOCATE 8, 22: PRINT "ษอออออออออออออออออออออออออป"
LOCATE 9, 22: PRINT "บ What page? (1 -         บ"
LOCATE 10, 22: PRINT "บ "
LOCATE 10, 47: PRINT " บ"
LOCATE 11, 22: PRINT "ศอออออออออออออออออออออออออผ"
LOCATE 9, 39: PRINT STR$(pagenum) + ")"
COLOR 15, 0
LOCATE 10, 24: PRINT "                       "
LOCATE 10, 24: INPUT ">", page
GOTO start
previous:
IF page = 1 THEN page = pagenum: GOTO start
page = page - 1
GOTO start
runmenu:
COLOR 0, 7
LOCATE 2, 3: PRINT "ษออออออออออออออออออป"
LOCATE 3, 3: PRINT "บ Code             บ"
LOCATE 4, 3: PRINT "บ Decode           บ"
LOCATE 5, 3: PRINT "ฬออออออออออออออออออน"
LOCATE 6, 3: PRINT "บ Cancel           บ"
LOCATE 7, 3: PRINT "ศออออออออออออออออออผ"
COLOR 15, 7
LOCATE 3, 6: PRINT "o"
LOCATE 4, 5: PRINT "D"
LOCATE 6, 5: PRINT "C"
doloop8:
mousestatus lb%, rb%, xmouse%, ymouse%
lm$ = INKEY$
lb = lb% + 2: IF lb = 2 THEN lb = 0
rb = rb% + 2: IF rb = 2 THEN rb = 0
x = xmouse% / 8 + 1
y = ymouse% / 8 + 1
LOCATE 1, 32
COLOR 7, 0
PRINT "X"; x; "Y"; y; "LB"; lb; "RB"; rb; "Page:"; page; "  "
IF lm$ = "O" THEN GOTO coder
IF lm$ = "o" THEN GOTO coder
IF lm$ = "c" THEN GOTO start
IF lm$ = "C" THEN GOTO start
IF lm$ = "D" THEN GOTO decoder
IF lm$ = "d" THEN GOTO decoder
IF lb = 1 THEN IF rb = 0 THEN IF y = 3 THEN IF x = 6 THEN GOTO coder
IF lb = 1 THEN IF rb = 0 THEN IF y = 4 THEN IF x = 5 THEN GOTO decoder
IF lb = 1 THEN IF rb = 0 THEN IF y = 6 THEN IF x = 5 THEN GOTO start
GOTO doloop8
helpmenu:
COLOR 0, 7
LOCATE 2, 64: PRINT "ษอออออออออออออออป"
LOCATE 3, 64: PRINT "บ About         บ"
LOCATE 4, 64: PRINT "บ Help          บ"
LOCATE 5, 64: PRINT "ฬอออออออออออออออน"
LOCATE 6, 64: PRINT "บ Cancel        บ"
LOCATE 7, 64: PRINT "ศอออออออออออออออผ"
COLOR 15, 7
LOCATE 3, 66: PRINT "A"
LOCATE 6, 66: PRINT "C"
LOCATE 4, 66: PRINT "H"
doloop9:
mousestatus lb%, rb%, xmouse%, ymouse%
lm$ = INKEY$
lb = lb% + 2: IF lb = 2 THEN lb = 0
rb = rb% + 2: IF rb = 2 THEN rb = 0
x = xmouse% / 8 + 1
y = ymouse% / 8 + 1
LOCATE 1, 32
COLOR 7, 0
PRINT "X"; x; "Y"; y; "LB"; lb; "RB"; rb; "Page:"; page; "  "
IF lb = 1 THEN IF rb = 0 THEN IF y = 3 THEN IF x = 66 THEN GOTO abouter
IF lb = 1 THEN IF rb = 0 THEN IF y = 4 THEN IF x = 66 THEN GOTO helper
IF lb = 1 THEN IF rb = 0 THEN IF y = 6 THEN IF x = 66 THEN GOTO start
IF lm$ = "a" THEN GOTO abouter
IF lm$ = "A" THEN GOTO abouter
IF lm$ = "H" THEN GOTO helper
IF lm$ = "h" THEN GOTO helper
IF lm$ = "C" THEN GOTO start
IF lm$ = "c" THEN GOTO start
GOTO doloop9
abouter:
CLS
COLOR 15, 0
PRINT "QBCode PLUS!"
PRINT "Version " + versionnumber$
PRINT "For IBM/Compatible machines"
PRINT "DOS | Windows 3.1 | Windows 95"
PRINT "(c)WolfWare Interactive, Inc."
PRINT
PRINT "WolfWare Interactive, Inc. is owned and"
PRINT "operated by J.T. Olds and Alex Mark"
PRINT "You can E-Mail JT at JTOlds@Yahoo.com or"
PRINT "JTTech@Technologist.com"
PRINT "You can E-Mail Alex at Aeris72@Yahoo.com"
PRINT
PRINT "QBCode PLUS! v. " + versionnumber$ + " is freeware. Donations"
PRINT "ARE accepted. If you want to donate, send check or"
PRINT "money to:"
PRINT
PRINT "JTOlds                         Alex Mark"
PRINT "10088 Stonewall Ct.     OR     1505 Arlington Dr."
PRINT "Sandy, UT                      Salt Lake City, UT"
PRINT "84092    USA                   84103      USA"
PRINT
SLEEP
GOTO start
helper:
CLS
COLOR 15, 0
PRINT "General:"
PRINT "QBCode PLUS! can create new, it can save, open,"
PRINT "decode, code, find, exit and"
PRINT "go to the DOS Shell."
PRINT "Switches:   -?   (This screen)"
PRINT "            -P   PaintPro"
PRINT "Syntax: QBCODE [switches] [drive]:\[folder(s)]\[filename].[extension]"
PRINT
PRINT "QBCode PLUS! " + versionnumber$ + " is not compatible with QBCode"
PRINT "PLUS! 1.0. Because of this, you cannot code"
PRINT "your old codes. You should decode them"
PRINT "with QBCode PLUS! 1.0, save it, then open"
PRINT "it with QBCode PLUS! " + versionnumber$ + ", code it, then"
PRINT "save it."
PRINT
PRINT "If you have a question, please e-mail me at"
PRINT "JTOlds@Yahoo.com and ask your question. It"
PRINT "may even be in a next release if it's good."
SLEEP
GOTO start
coder:
GOSUB codeinput
GOTO codeloop
decoder:
GOSUB codeinput
GOTO decodeloop
decodeloop:
FOR temp = 1 TO linenum
b$ = word$(temp)
IF codenumber = 1 THEN GOSUB decodea
IF codenumber = 2 THEN GOSUB decodeb
NEXT temp
GOTO start

codeloop:
FOR temp = 1 TO linenum
b$ = word$(temp)
IF codenumber = 1 THEN GOSUB codea
IF codenumber = 2 THEN GOSUB codeb
NEXT temp
GOTO start

codea:
C$ = ""
slen = LEN(b$)
FOR i = 0 TO slen - 1
rlen = slen - i
rstr$ = RIGHT$(b$, rlen)
indexchar = ASC(rstr$)
IF indexchar < 32 OR indexchar > 126 THEN GOTO tempcodea
indexchar = indexchar + codeOffset + 9
IF indexchar > 126 THEN indexchar = indexchar - 126 + 32
tempcodea:
C$ = C$ + CHR$(indexchar)
NEXT i
word$(temp) = C$
RETURN

decodea:
C$ = ""
slen = LEN(b$)
FOR i = 0 TO slen - 1
rlen = slen - i
rstr$ = RIGHT$(b$, rlen)
indexchar = ASC(rstr$)
IF indexchar < 32 OR indexchar > 126 THEN GOTO tempdecodea
indexchar = indexchar - codeOffset - 9
IF indexchar < 32 THEN indexchar = indexchar + 126 - 32
tempdecodea:
C$ = C$ + CHR$(indexchar)
NEXT i
word$(temp) = C$
RETURN

codeb:
C$ = ""
slen = LEN(b$)
FOR i = 0 TO slen - 1
rlen = slen - i
rstr$ = RIGHT$(b$, rlen)
indexchar = ASC(rstr$)
IF indexchar < 32 OR indexchar > 126 THEN GOTO tempcodeb
indexchar = indexchar + codeOffset + 17
IF indexchar > 126 THEN indexchar = indexchar - 126 + 32
tempcodeb:
C$ = C$ + CHR$(indexchar)
NEXT i
word$(temp) = C$
RETURN
decodeb:
C$ = ""
slen = LEN(b$)
FOR i = 0 TO slen - 1
rlen = slen - i
rstr$ = RIGHT$(b$, rlen)
indexchar = ASC(rstr$)
IF indexchar < 32 OR indexchar > 126 THEN GOTO tempdecodeb
indexchar = indexchar - codeOffset - 17
IF indexchar < 32 THEN indexchar = indexchar + 126 - 32
tempdecodeb:
C$ = C$ + CHR$(indexchar)
NEXT i
word$(temp) = C$
RETURN
codeinput:
COLOR 0, 7
LOCATE 8, 24: PRINT "ษออออออออออออออออออป"
LOCATE 9, 24: PRINT "บ What code? (1/2) บ"
LOCATE 10, 24: PRINT "บ "
LOCATE 10, 42: PRINT " บ"
LOCATE 11, 24: PRINT "ศออออออออออออออออออผ"
COLOR 15, 0
LOCATE 10, 26: PRINT "                "
LOCATE 10, 26: INPUT ">", codenumber
COLOR 0, 7
LOCATE 8, 22: PRINT "ษออออออออออออออออออออออป"
LOCATE 9, 22: PRINT "บ What off-set? (0-50) บ"
LOCATE 10, 22: PRINT "บ "
LOCATE 10, 44: PRINT " บ"
LOCATE 11, 22: PRINT "ศออออออออออออออออออออออผ"
COLOR 15, 0
LOCATE 10, 24: PRINT "                    "
LOCATE 10, 24: INPUT ">", codeOffset
RETURN
pageprinter:
temp = page - 1
temp2 = temp * 22
FOR q = 2 TO 23
LOCATE q, 1
PRINT word$(q + temp2)
NEXT q
RETURN
search:
COLOR 0, 7
LOCATE 8, 22: PRINT "ษอออออออออออออออออออออออออออออออออป"
LOCATE 9, 22: PRINT "บ What do you want to search for? บ"
LOCATE 10, 22: PRINT "บ "
LOCATE 10, 55: PRINT " บ"
LOCATE 11, 22: PRINT "ศอออออออออออออออออออออออออออออออออผ"
COLOR 15, 0
LOCATE 10, 24: PRINT "                               "
LOCATE 10, 24: LINE INPUT ">", searcher$
CLS
COLOR 15, 0
H = 1
time = 0
linesearched = 1
pagesearched = 1
j = 0
FOR i = 2 TO linenum
t = i - 1
IF t = pagesearched * 22 THEN pagesearched = pagesearched + 1: j = j + 22
linesearched = t - j
IF INSTR(UCASE$(word$(i)), UCASE$(searcher$)) > 0 THEN
LOCATE H, 1: PRINT "Page:";
PRINT pagesearched
H = H + 1
IF H >= 22 THEN GOSUB searchwait
LOCATE H, 1: PRINT "Line:";
PRINT linesearched
H = H + 1
IF H >= 22 THEN GOSUB searchwait
PRINT
H = H + 1
IF H >= 22 THEN GOSUB searchwait
time = time + 1
END IF
NEXT i
IF time = 0 THEN PRINT "No matches found"
IF time = 1 THEN LOCATE H, 1: PRINT "Found"; time; "time."
IF time > 1 THEN LOCATE H, 1: PRINT "Found"; time; "times."
SLEEP
GOTO start
searchwait:
LINE INPUT "Press ENTER to continue...", temp$
H = 1
CLS
RETURN
Handler:
SELECT CASE ERR
CASE 53
GOTO wrongfile
CASE 54
GOTO wrongfile
CASE 57
GOTO wrongfile
CASE 64
GOTO wrongfile
CASE 68
GOTO wrongfile
CASE 70
GOTO wrongfile
CASE 71
GOTO wrongfile
CASE 72
GOTO wrongfile
CASE 75
GOTO wrongfile
CASE 76
GOTO wrongfile
CASE 7
CLS
COLOR 15, 0
PRINT "Out of Memory."
PRINT "Press Y to get rid of some QBCode PLUS! pages."
COLOR 31, 0
PRINT "Note: Will only support 10 pages if Y is pressed. (Current Support=50)"
COLOR 15, 0
PRINT "Press N to abort."
dolooper1234:
lm$ = INKEY$
IF UCASE$(lm$) = "Y" THEN pagenum = 10: linenum = pagenum * 22: linenum = linenum + 1: REDIM word$(linenum): RESUME ttotp
IF UCASE$(lm$) = "N" THEN PRINT : END
GOTO dolooper1234
CASE 14
temp$ = LEFT$(temp$, 80)
RESUME NEXT
CASE ELSE
GOTO ElseError
END SELECT
wrongfile:
CLS
COLOR 15
PRINT "Bad file name, location, or switch. Please try again."
PRINT
END
prompthelp:
PRINT
PRINT "QBCode PLUS! Version " + versionnumber$
PRINT
PRINT "Switches:   -?   (This screen)"
PRINT "Syntax: QBCODE [switch] [drive]:\[folder(s)]\[filename].[extension]"
PRINT
END
ElseError:
CLS
COLOR 15
PRINT
SELECT CASE ERR
CASE 1
PRINT "NEXT without FOR"
CASE 38
PRINT "Array not defined"
CASE 3
PRINT "RETURN without GOSUB"
CASE 40
PRINT "Variable required"
CASE 37
PRINT "Argument-count mismatch"
CASE 2
PRINT "Syntax Error"
CASE 4
PRINT "Out of DATA"
CASE 50
PRINT "FIELD overflow"
CASE 5
PRINT "Illegal function call"
CASE 51
PRINT "Internal error"
CASE 6
PRINT "Overflow"
CASE 52
PRINT "Bad file name or number"
CASE 7
PRINT "Out of memory"
CASE 53
PRINT "File not found"
CASE 8
PRINT "Label not defined"
CASE 54
PRINT "Bad file mode"
CASE 9
PRINT "Subscript out of range"
CASE 55
PRINT "File already open"
CASE 10
PRINT "Duplicate definition"
CASE 56
PRINT "FIELD statement active"
CASE 11
PRINT "Division by zero"
CASE 57
PRINT "Device I/O error"
CASE 12
PRINT "Illegal in direct mode"
CASE 58
PRINT "File already exists"
CASE 13
PRINT "Type mismatch"
CASE 59
PRINT "Bad record length"
CASE 14
PRINT "Out of string space"
CASE 61
PRINT "Disk full"
CASE 16
PRINT "String formula too complex"
CASE 62
PRINT "Input past end of file"
CASE 17
PRINT "Cannot continue"
CASE 63
PRINT "Bad record number"
CASE 18
PRINT "Function not defined"
CASE 64
PRINT "Bad file name"
CASE 19
PRINT "No RESUME"
CASE 67
PRINT "Too many files"
CASE 20
PRINT "RESUME without error"
CASE 68
PRINT "Device unavailable"
CASE 24
PRINT "Device timeout"
CASE 69
PRINT "Communication-buffer overflow"
CASE 25
PRINT "Device fault"
CASE 70
PRINT "Permission denied"
CASE 26
PRINT "FOR without NEXT"
CASE 71
PRINT "Disk NOT ready"
CASE 27
PRINT "Out of paper"
CASE 72
PRINT "Disk-media error"
CASE 29
PRINT "WHILE without WEND"
CASE 73
PRINT "Feature unavailable"
CASE 30
PRINT "WEND without WHILE"
CASE 74
PRINT "Rename across disks"
CASE 33
PRINT "Duplicate label"
CASE 75
PRINT "Path/File access error"
CASE 35
PRINT "Subprogram not defined"
CASE 76
PRINT "Path not found"
CASE ELSE
PRINT "Unexpected error"
END SELECT
PRINT
END
inputing:
key$ = INKEY$
mousestatus lb%, rb%, xmouse%, ymouse%
xm = xmouse% / 8 + 1
ym = ymouse% / 8 + 1
IF lb% = -1 THEN lb = 1 ELSE lb = lb%
IF rb% = -1 THEN rb = 1 ELSE rb = rb%
RETURN

SUB MouseDriver (AX%, bx%, CX%, DX%)
  DEF SEG = VARSEG(Mouse$)
  Mouse% = SADD(Mouse$)
  CALL Absolute(AX%, bx%, CX%, DX%, Mouse%)
END SUB

SUB MousePut
  AX% = 4
  CX% = x%
  DX% = y%
  MouseDriver AX%, 0, CX%, DX%
END SUB

SUB mouseshow
  AX% = 1
  MouseDriver AX%, 0, 0, 0
END SUB

SUB mousestatus (lb%, rb%, xmouse%, ymouse%)
  AX% = 3
  MouseDriver AX%, bx%, CX%, DX%
  lb% = ((bx% AND 1) <> 0)
  rb% = ((bx% AND 2) <> 0)
  xmouse% = CX%
  ymouse% = DX%
END SUB

