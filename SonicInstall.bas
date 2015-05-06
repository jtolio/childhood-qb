CLS
PRINT "Hello..."
PRINT "This will install SEGA SONIC games on your computer."
PRINT "What directory do you want this installed to?"
PRINT "[drive]:\[foldername(s)]"
PRINT "Example: C:\GAMES"
PRINT "Please use existing folders"
INPUT ">", where$
SHELL "a:\instal~1\pkunzip.exe a:\sonic.zip " + where$
END

