do FoxConsole

putHeader()
putMenu()

* Ask for user to enter one option
lnOption = val(_vfp.cli.input("Enter option: "))

do case
case lnOption == 1 && Saludar a alguien
	Saludar()
case lnOption == 2 && Sumar 2 números
	Sumar()
case lnOption == 3 && Convertir de Grados Celsius a Fahrenheit
	conversion()
case lnOption == 4 && Tabla de multiplicar
	Multiplicar()
case lnOption == 5 && Adivina mi numero
	Adivina()
case lnOption == 6 && Salir
	* Nada
otherwise
	_vfp.cli.Println("Opcion invalida. Pulsa ENTER para salir...")
	_vfp.cli.readkey()
	_vfp.cli.exit(-1)
endcase
_vfp.cli.Println("Gracias por usar esta libreria. Pulsa ENTER para salir...")
_vfp.cli.readkey()
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

procedure putMenu
	_vfp.cli.Println("[1] > Saludar a alguien")
	_vfp.cli.Println("[2] > Sumar 2 numeros")
	_vfp.cli.Println("[3] > Convertir de Grados Celsius a Fahrenheit")
	_vfp.cli.Println("[4] > Tabla de multiplicar")
	_vfp.cli.Println("[5] > Adivina mi numero")
	_vfp.cli.Println("[6] > Salir")
endproc


procedure Saludar
	local lcNombre
	_vfp.cli.Println()
	lcNombre = _vfp.cli.input("A quien vamos a saludar: ")
	if !empty(lcNombre)
		_vfp.cli.Println("Hola " + lcNombre + ". Un gusto saludarte!")
	else
		_vfp.cli.Println("Hola fantasma, consiguete un nombre y luego regresas...")
	endif
	_vfp.cli.Println()
endproc

procedure Sumar
	local lnNum1, lnNum2
	_vfp.cli.Println()
	lnNum1 = val(_vfp.cli.input("Numero 1: "))
	lnNum2 = val(_vfp.cli.input("Numero 2: "))
	_vfp.cli.Println("La suma es: " + alltrim(str(lnNum1 + lnNum2)))
	_vfp.cli.Println()
endproc

procedure conversion
	local lnGrados
	_vfp.cli.Println()
	lnGrados = val(_vfp.cli.input("Cuantos grados hacen?: "))
	_vfp.cli.Println(alltrim(str(lnGrados)) + " grados celcius son: " + alltrim(str(lnGrados * 1.8 + 32)) + " Fahrenheit.")
	_vfp.cli.Println()
endproc

procedure Multiplicar
	local lnTabla
	lnTabla = val(_vfp.cli.input("Imprimir la tabla del: "))
	for i=1 to 10
		_vfp.cli.Println(alltrim(str(lnTabla)) + " x " + alltrim(str(i)) + " = " + alltrim(str(lnTabla * i)))
	endfor
endproc

procedure Adivina
	local lnSecret, lGuessed, lnGuess
	lnSecret = int(1+rand() * 100)

	_vfp.cli.Println()
	_vfp.cli.Println("Bienvenido al juego 'Adivina mi numero'")
	_vfp.cli.Println("Dime un numero del 1 al 100 y te dire si es el que estoy pensando de acuerdo?")
	_vfp.cli.Println("NOTA: si usas el algoritmo de busqueda binaria te ira mejor...")
	_vfp.cli.Println()

	do while !lGuessed
		lnGuess = val(_vfp.cli.input("Tu numero: "))
		do case
		case lnGuess < lnSecret
			_vfp.cli.Println("Muy bajo...")
		case lnGuess > lnSecret
			_vfp.cli.Println("Muy alto...")
		otherwise
			_vfp.cli.Println("Acertaste!")
			exit
		endcase
	enddo
endproc
