SHELL "a:\data\pkunzip.exe -d a:\data\hsp.zip c:\HsPlayer\"
CLS
INPUT "DO YOU HAVE WINDOWS 95 (PRESS 1) OR WINDOWS NT (PRESS 2) >", c
IF c = 1 THEN GOTO win95
IF c = 2 THEN GOTO winNT
win95:
SHELL "md " + CHR$(34) + "c:\windows\start menu\programs\HsPlayer" + CHR$(34)
SHELL "copy " + CHR$(34) + "a:\data\run hsplayer.pif" + CHR$(34) + " " + CHR$(34) + "c:\windows\start menu\programs\HsPlayer\Run HsPlayer.pif" + CHR$(34)
SHELL "c:\hsplayer\yes.exe"
END
winNT:
SHELL "a:\data\winnt.bat"
END

