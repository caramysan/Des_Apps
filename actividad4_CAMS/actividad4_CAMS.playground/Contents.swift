import UIKit
/*:
# Playground - Actividad 4
* Condicionales y Ciclos
* Funciones
* Enumareción
*/



/*:
### Condicionales y Ciclos
A) Declarar la variable "datos" con los valores [3,6,9,2,4,1]
*/
var datos = [3, 6, 9, 2, 4, 1]
//: B) realizar el recorrido de la variable "datos" con la instrucción "for"
for var x in datos {
    datos
}

//: C) Encontrar los valores menores a 5
var valor = 5
var index = 0
for value in datos{
    if value < valor{
        print("El valor \(value) es menor que 5")
    }
    index += 1
}
/*:
### Funciones
A) Crea la función "suma" que reciba dos parámetros de tipo entero regresando la suma de ambos números.
*/
func suma(a:Int, b:Int) -> Int{
    return a + b
}
suma(a:7, b:5)
//: B) Crear la función "potencia" que reciba dos parámetros de tipo entero, el primer parámetro para el numero base y el segundo la potencia a elevar, regresando el resultado de la potencia.
func potencia (c:Int, d:Int) -> Decimal{
    return pow(Decimal(c), d)
}
potencia(c: 8, d: 2)
/*:
### Enumeraciones
A) Crea la enumaración "meses" para definir tipos de datos basados en los meses del año.
*/
enum meses{
    case Enero
    case Febrero
    case Marzo
    case Abril
    case Mayo
    case Junio
    case Julio
    case Agosto
    case Septiembre
    case Octubre
    case Noviembre
    case Diciembre
}

//: B) Crear la función "numeroMes" que reciba el tipo de dato "meses" y regrese el numero del mes correspondiente
var f = meses.Enero
func numeroMes (e:meses) -> meses{
    return f
}
//: C) Para regresar el numero de mes correspondiente utilizar la "switch"
switch f{
case .Enero:
    print("1")
case .Febrero:
    print("2")
case .Marzo:
    print("3")
case .Abril:
    print("4")
case .Mayo:
    print("5")
case .Junio:
    print("6")
case .Julio:
    print("7")
case .Agosto:
    print("8")
case .Septiembre:
    print("9")
case .Octubre:
    print("10")
case .Noviembre:
    print("11")
case .Diciembre:
    print("12")
}
