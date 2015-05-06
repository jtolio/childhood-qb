an:
CLS
cl:
PRINT "This is JT's code program 2.5"
PRINT

INPUT "Enter which code you want (1-4 [even numbers are best])", choice
IF choice = 1 THEN GOTO code66
IF choice = 2 THEN GOTO encode2
IF choice = 3 THEN GOTO bc
IF choice = 4 THEN GOTO decode2

bc:
cl8:
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
PRINT
aa:
INPUT "Do you want to go to the main menu(1), quit(2), try again(3), or clear the      screen(4)"; choice
IF choice = 1 THEN GOTO cl
IF choice = 2 THEN GOTO quit
IF choice = 3 THEN GOTO cl8
IF choice = 4 THEN CLS
GOTO an

encode2:
INPUT "What offset (code number) do you want (no more than two digits)"; choice
codeOffset = choice
INPUT "Do you want to code or decode (code=1 decode=2)"; choice
IF choice = 1 THEN GOTO zz
IF choice = 2 THEN GOTO decode

zz:
cl2:
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
INPUT "Do you want to go to the main menu(1), quit(2), try again(3), or clear the      screen(4)"; choice
IF choice = 1 THEN GOTO cl
IF choice = 2 THEN GOTO quit
IF choice = 3 THEN GOTO cl2
IF choice = 4 THEN CLS
GOTO an

decode:
cl3:
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
INPUT "Do you want to go to the main menu(1), quit(2), try again(3), or clear the      screen(4)"; choice
IF choice = 1 THEN GOTO cl
IF choice = 2 THEN GOTO quit
IF choice = 3 THEN GOTO cl3
IF choice = 4 THEN CLS
GOTO an
END

quit:
CLS
PRINT "DONE"
END

code66:
scrambled$ = "yxptovwzusnqrkeclmjdifgbah"
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
PRINT
nn:
INPUT "Do you want to go to the main menu(1), quit(2), try again(3), or clear the      screen(4)"; choice
IF choice = 1 THEN GOTO cl
IF choice = 2 THEN GOTO quit
IF choice = 3 THEN GOTO code66
IF choice = 4 THEN CLS
GOTO an

decode2:
INPUT "What offset (code number) do you want (no more than two digits)"; choice
codeOffset = choice
INPUT "Do you want to code or decode (code=1 decode=2)"; choice
IF choice = 1 THEN GOTO zz2
IF choice = 2 THEN GOTO decode2

zz2:
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
INPUT "Do you want to go to the main menu(1), quit(2), try again(3), or clear the      screen(4)"; choice
IF choice = 1 THEN GOTO cl
IF choice = 2 THEN GOTO quit
IF choice = 3 THEN GOTO zz2
IF choice = 4 THEN CLS
GOTO an

decode3:
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

