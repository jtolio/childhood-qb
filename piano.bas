start:
l$ = INKEY$
SELECT CASE l$
CASE CHR$(27)
END
CASE CHR$(65)
GOTO player
CASE CHR$(66)
GOTO player
CASE CHR$(67)
GOTO player
CASE CHR$(68)
GOTO player
CASE CHR$(69)
GOTO player
CASE CHR$(70)
GOTO player
CASE CHR$(71)
GOTO player
CASE CHR$(97)
GOTO player
CASE CHR$(98)
GOTO player
CASE CHR$(99)
GOTO player
CASE CHR$(100)
GOTO player
CASE CHR$(101)
GOTO player
CASE CHR$(102)
GOTO player
CASE CHR$(103)
GOTO player
END SELECT
GOTO start
player:
PLAY l$
GOTO start

