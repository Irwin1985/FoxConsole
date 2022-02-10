# FoxConsole
Una pequeña librería que habilita la escritura y lectura de datos por consola.

Si te gusta mi trabajo puedes apoyarme con un donativo:   
- [![DONATE!](http://www.pngall.com/wp-content/uploads/2016/05/PayPal-Donate-Button-PNG-File-180x100.png)](https://www.paypal.com/donate/?hosted_button_id=LXQYXFP77AD2G) 

    Gracias por tu apoyo!

# Ejemplo

```xBase
Do FoxConsole
* Escribir en la consola
_vfp.cli.Print("Imprime texto y se queda en la misma linea...")
_vfp.cli.Println() && salto de línea sin texto
_vfp.cli.Println("Otro texto con salto de linea...")

* Leer desde la consola
lcNombre = _vfp.cli.Input("Como te llamas: ")
If !empty(lcNombre)
    _vfp.cli.Println("Hola " + lcNombre + "!")
Else
    _vfp.cli.Println("No te saludo porque no tienes nombre...")
Endif

lnEdad = val(_vfp.cli.Input("Edad: "))

If between(lnEdad, 40, 65)
    _vfp.cli.Println("Mis respetos a los foxeros veteranos...")
Else
    _vfp.cli.Println("Te falta mucho para ser un veterano...")
Endif
```
