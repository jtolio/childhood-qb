SCREEN 8
an:
CLS
cl:
COLOR 10
PRINT "This is JT's code program 3.0"
PRINT

INPUT "Enter which code you want (A-D [B & D are best] {type E to exit}) >", choice$
SELECT CASE choice$
CASE "c"
GOTO bc
CASE "a"
GOTO code66
CASE "b"
GOTO encode2
CASE "d"
GOTO decode2
CASE "e"
GOTO quit
END SELECT

bc:
cl8:
COLOR 5
scrambled$ = "IXRVOPQNASZWTHEFGCJMYDLBUK"
PRINT
INPUT "Enter the sentence to decode/code (no punctuation) >", a$
a$ = UCASE$(a$)
slen = LEN(a$)
PRINT
FOR I = 0 TO slen - 1
rlen = slen - I
rstr$ = RIGHT$(a$, rlen)
indexchar = ASC(rstr$)
IF indexchar = 32 THEN
        PRINT " ";
ELSE
        indexchar = indexchar - 65
        IF indexchar < 0 OR indexchar > LEN(scrambled$) - 1 THEN
                PRINT " "
        ELSE
                scramstr$ = RIGHT$(scrambled$, LEN(scrambled$) - indexchar)
                PRINT LEFT$(scramstr$, 1);
        END IF
END IF
NEXT I
aa:
PRINT
INPUT "Do you want to go to the main menu(1), quit(2), try again(3), or clear the      screen(4) >", choice
IF choice = 1 THEN GOTO cl
IF choice = 2 THEN GOTO quit
IF choice = 3 THEN GOTO cl8
IF choice = 4 THEN CLS
GOTO an

encode2:
COLOR 12
PRINT
INPUT "What offset (code number) do you want (no more than two digits) >", choice
codeOffset = choice
PRINT
INPUT "Do you want to code or decode (code=1 decode=2)"; choice
IF choice = 1 THEN GOTO zz
IF choice = 2 THEN GOTO decode

zz:
cl2:
COLOR 6
PRINT
INPUT "Enter the sentence to code >", a$
slen = LEN(a$)
PRINT
FOR I = 0 TO slen - 1
rlen = slen - I
rstr$ = RIGHT$(a$, rlen)
indexchar = ASC(rstr$)
IF indexchar < 32 OR indexchar > 126 THEN
PRINT "Invalid input"
GOTO cl2
END IF
indexchar = indexchar + codeOffset
IF indexchar > 126 THEN indexchar = indexchar - 126 + 32
PRINT CHR$(indexchar);
NEXT I
PRINT
INPUT "Do you want to go to the main menu(1), quit(2), try again(3), clear the         screen(4), or decode(5) >", choice
IF choice = 1 THEN GOTO cl
IF choice = 2 THEN GOTO quit
IF choice = 3 THEN GOTO cl2
IF choice = 4 THEN CLS
IF choice = 5 THEN GOTO decode
GOTO an

decode:
cl3:
COLOR 2
PRINT
INPUT "Enter the sentence to decode >", a$
slen = LEN(a$)
PRINT
FOR I = 0 TO slen - 1
rlen = slen - I
rstr$ = RIGHT$(a$, rlen)
indexchar = ASC(rstr$)
IF indexchar < 32 OR indexchar > 126 THEN
PRINT "Invalid input"
GOTO cl3
END IF
indexchar = indexchar - codeOffset
IF indexchar < 32 THEN indexchar = indexchar + 126 - 32
PRINT CHR$(indexchar);
NEXT I
PRINT
INPUT "Do you want to go to the main menu(1), quit(2), try again(3), or clear the      screen(4) >", choice
IF choice = 1 THEN GOTO cl
IF choice = 2 THEN GOTO quit
IF choice = 3 THEN GOTO cl3
IF choice = 4 THEN CLS
GOTO an
END

quit:
COLOR 15
CLS
PRINT "DONE"
END

code66:
COLOR 4
scrambled$ = "YXPTOVWZUSNQRKECLMJDIFGBAH"
PRINT
INPUT "Enter the sentence to decode/code (no punctuation) >", a$
a$ = UCASE$(a$)
slen = LEN(a$)
PRINT
FOR I = 0 TO slen - 1
rlen = slen - I
rstr$ = RIGHT$(a$, rlen)
indexchar = ASC(rstr$)
IF indexchar = 32 THEN
        PRINT " ";
ELSE
        indexchar = indexchar - 65
        IF indexchar < 0 OR indexchar > LEN(scrambled$) - 1 THEN
                PRINT " "
        ELSE
                scramstr$ = RIGHT$(scrambled$, LEN(scrambled$) - indexchar)
                PRINT LEFT$(scramstr$, 1);
        END IF
END IF
NEXT I
nn:
PRINT
INPUT "Do you want to go to the main menu(1), quit(2), try again(3), or clear the      screen(4) >", choice
IF choice = 1 THEN GOTO cl
IF choice = 2 THEN GOTO quit
IF choice = 3 THEN GOTO code66
IF choice = 4 THEN CLS
GOTO an

decode2:
COLOR 12
PRINT
INPUT "What offset (code number) do you want (no more than two digits) >", choice
codeOffset = choice
PRINT
INPUT "Do you want to code or decode (code=1 decode=2)"; choice
IF choice = 1 THEN GOTO zz2
IF choice = 2 THEN GOTO decode3

zz2:
COLOR 14
PRINT
INPUT "Enter the sentence to code >", a$
slen = LEN(a$)
PRINT
FOR I = 0 TO slen - 1
rlen = slen - I
rstr$ = RIGHT$(a$, rlen)
indexchar = ASC(rstr$)
IF indexchar < 32 OR indexchar > 126 THEN
PRINT "Invalid input"
GOTO zz2
END IF
indexchar = indexchar + codeOffset + 5
IF indexchar > 126 THEN indexchar = indexchar - 126 + 32
PRINT CHR$(indexchar);
NEXT I
PRINT
INPUT "Do you want to go to the main menu(1), quit(2), try again(3), clear the         screen(4), or decode(5) >", choice
IF choice = 1 THEN GOTO cl
IF choice = 2 THEN GOTO quit
IF choice = 3 THEN GOTO zz2
IF choice = 4 THEN CLS
IF choice = 5 THEN GOTO decode3
GOTO an

decode3:
COLOR 11
PRINT
INPUT "Enter the sentence to decode >", a$
slen = LEN(a$)
PRINT
FOR I = 0 TO slen - 1
rlen = slen - I
rstr$ = RIGHT$(a$, rlen)
indexchar = ASC(rstr$)
IF indexchar < 32 OR indexchar > 126 THEN
PRINT "Invalid input"
GOTO decode3
END IF
indexchar = indexchar - codeOffset - 5
IF indexchar < 32 THEN indexchar = indexchar + 126 - 32
PRINT CHR$(indexchar);
NEXT I
PRINT
INPUT "Do you want to go to the main menu(1), quit(2), try again(3), or clear the      screen(4)"; choice
IF choice = 1 THEN GOTO cl
IF choice = 2 THEN GOTO quit
IF choice = 3 THEN GOTO decode3
IF choice = 4 THEN CLS
GOTO an
END

