import UIKit
/*:
# Playground - Actividad 5
* Class y Struct
* Extension
* Optional
*/


/*: 
### Actividad Class y Struct
A) Diseñar la clase Persona que contenga dos metodos, el primero "Saludar" que reciba el parámetro nombre y regrese el mensaje el nombre mas el texto "mucho gusto", el segundo metodo "Caminar" que reciba como parámetro un tipo de dato Int y regrese un tipo de dato String indicando el numero de pasos caminados.
*/
class Persona{
    var texto = "mucho gusto"
    var steps = "Número de pasos: "
    var msj:String = ""
    func Saludar(nombre:String)
    {
        self.msj = nombre + texto
    }
    func Caminar(pasos:Int)
    {
        self.steps += String(pasos)
    }
}
//: B) Diseñar el struct "Pantalla" la cual recibirá como como parametros el ancho y alto de una pantalla como tipo de datos Int con un constructor, para inicializar la estructura.
struct Pantalla
{
    init(alto:Int, ancho:Int)
    {
        
    }
}

/*:
### Extensions
A) Diseñar un extensión del tipo de dato Int que represente las horas y que pueda regresar los segundos correspondientes (puedes utilizar una función o una variable computada)
*/
extension Int {
    func horas() -> Int {
        return self*24*60
    }
}
4.horas()

//: B) Diseñar una extensión del tipo de dato String que represente un día de la semana y regrese el numero correspondiente iniciando con Domingo = 1 y finalizando Sábado = 7
extension String {
    func domingo() -> String {
        return "1"
    }
    func lunes() -> String {
        return "2"
    }
    func martes() -> String {
        return "3"
    }
    func miercoles() -> String {
        return "4"
    }
    func jueves() -> String {
        return "5"
    }
    func vieres() -> String {
        return "6"
    }
    func sabado() -> String {
        return "7"
    }
}
/*:
### Optionals
A) Diseñar una variable optional para recibir el tipo de dato Int en caso de que exista.
*/
var int:Int?
//: B) Para la colección let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200] diseñar una variable opcional para recibir el valor de dias["DF"]
let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
var existe:Int?

existe = dias["DF"]
