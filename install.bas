CLS
COLOR 2
PRINT "Thank you for choosing JT's cool program."
PRINT "Please wait while setup copys important files to c:\JTsProg\"
PRINT "Instaling...                                                "
COLOR 0
SHELL "md c:\JTsProg"
SHELL "copy a:\data\koolprog.exe c:\JTsProg\*.*"
COLOR 12
PRINT "While this is happening, take a moment to remember to keep the disk in"
PRINT "until after the first time you run this program. Then return the disk"
PRINT "to your good friend, JT Olds."
COLOR 0
SHELL "md c:\JTsProg\data"
SHELL "md c:\JTsProg\data\x-plore"
SHELL "md c:\JTsProg\data\program"
SHELL "copy a:\data\koolnew.exe c:\jtsprog\data\*.*"
SHELL "copy a:\data\mordat\koolprog.exe c:\jtsprog\data\*.*"
SHELL "md c:\windows\startm~1\programs\JTsProg"
SHELL "copy a:\data\koolprog.pif c:\windows\startm~1\programs\JTsProg\*.*"
SHELL "copy a:\data\koolprog.pif c:\windows\startm~1\programs\startu~1\*.*"
SHELL "copy a:\data\mordat\uninstal.exe c:\jtsprog\*.*"
SHELL "copy a:\data\mordat\uninstal.pif c:\windows\startm~1\programs\jtsprog\*.*"
SHELL "copy a:\data\mordat\x-plore\*.* c:\jtsprog\data\x-plore\*.*"
SHELL "copy a:\data\mordat\programs\*.* c:\jtsprog\data\program\*.*"
SHELL "copy a:\data\mordat\x-plore.lnk c:\windows\startm~1\programs\jtsprog\*.*"
SHELL "copy a:\data\mordat\programs.lnk c:\windows\startm~1\programs\jtsprog\*.*"
COLOR 2
PRINT "Installation complete.                                               "
COLOR 12
PRINT "You can find the programs in the folder JT's Program in the Program"
COLOR 2
PRINT "folder in the start menu."
COLOR 12
PRINT "Bye! (Press the X to exit)"
COLOR 0

