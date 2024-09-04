_SCREEN.Visible = .F.

do FoxConsole WITH 1

putHeader()

IF _vfp.cli.GetIsConsoleOut()
	_vfp.cli.Println("Input something")
ENDIF

_vfp.cli.Println(_vfp.cli.ReadLn())

_vfp.cli.exit(0)


* =========================================================== *
* Helper functions (just for this example)
* =========================================================== *
procedure putHeader
	text TO lcHeader noshow
  ______           _____                      _
 |  ____|         / ____|                    | |
 | |__ _____  __ | |     ___  _ __  ___  ___ | | ___
 |  __/ _ \ \/ / | |    / _ \| '_ \/ __|/ _ \| |/ _ \
 | | | (_) >  <  | |___| (_) | | | \__ \ (_) | |  __/
 |_|  \___/_/\_\  \_____\___/|_| |_|___/\___/|_|\___|
	ENDTEXT

	_vfp.cli.Println(lcheader)
	_vfp.cli.Println()
	_vfp.cli.Println("******************************************************")
	_vfp.cli.Println("Author: Irwin Rodriguez <rodriguez.irwin@gmail.com>")
	_vfp.cli.Println("Github: https://github.com/Irwin1985")
	_vfp.cli.Println("Patreon: https://patreon.com/IrwinRodriguez")
	_vfp.cli.Println("******************************************************")
	_vfp.cli.Println()
endproc

