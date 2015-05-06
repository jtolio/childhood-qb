PRINT "Hi!"
PRINT "What Directory did you unzip this to?"
PRINT "Example: C:\DOWNLOADS"
INPUT ">", c$
d$ = CHR$(34) + c$ + "\" + CHR$(34)
PRINT "Please wait while files are being copied to c:\StartPro"
PRINT "Note: If this folder name or any filename is changed, this program"
PRINT "will not work. Please Wait...."
SHELL "md c:\StartPro"
SHELL "copy " + d$ + "*.jto c:\startpro"
SHELL "copy " + d$ + "*.exe c:\startpro"
SHELL "copy " + d$ + "*.hlp c:\startpro"
SHELL "copy " + d$ + "*.fbh c:\startpro"
SHELL "copy " + d$ + "*.txt c:\startpro"
SHELL "md" + CHR$(34) + "c:\windows\startm~1\programs\StartPro PLUS!" + CHR$(34)
SHELL "copy " + d$ + "*.pif " + CHR$(34) + "c:\windows\startm~1\programs\StartPro PLUS!" + CHR$(34)
SHELL "copy " + d$ + "*.lnk " + CHR$(34) + "c:\windows\startm~1\programs\StartPro PLUS!" + CHR$(34)
SHELL "copy " + d$ + "*.ico c:\startpro"
SHELL "copy " + d$ + "*.ini c:\startpro"
END

