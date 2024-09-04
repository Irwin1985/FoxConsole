
BUILD EXE sample.exe FROM sample.pjx RECOMPILE

LOCAL loConsoleTools
loConsoleTools = NEWOBJECT("ConsoleTools", "../foxconsole.prg")
loConsoleTools.makeconsoleapp("sample.exe")

QUIT
