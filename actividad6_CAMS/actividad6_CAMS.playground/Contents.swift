import UIKit
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*: 
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/
infix operator ^^^

func ^^^(base:Int, exp:Int) -> Double{
    return pow(Double(base), Double(exp))
}

5^^^2
//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor
prefix operator |>

prefix func |>(datos:[Int]) -> [Int]{
    let sortedData = datos.sorted()
    return sortedData
}
|>[2,5,3,4]
/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/
var nums = [2,5,3,4]

class Cantidad {
    var valores:[Int]
    init(v:[Int]) {
        self.valores = v
    }
    subscript(idx:Int)->Int {
        get{
            return valores[idx]
        }
        set(nuevoV){
            valores[idx] = nuevoV
        }
    }
}
let multi = Cantidad(v: nums)
let array = multi.valores.map {$0 * 2}
array[1]
//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps
struct posicion {
    var x:CGPoint
    var y:CGPoint
    var place:(CGPoint, CGPoint)
    
    func position() -> (CGPoint, CGPoint) {
        let place = (self.x, self.y)
        return place
    }
    subscript (idx:CGPoint) -> (CGPoint, CGPoint) {
        get{
            return place
    }
        set(newPlace) {
            place = newPlace
        }
}
}
/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
let dictError = ["A":1, "B":2,"C":3]

func ExisteValor(idx:String) {
    guard let existe = dictError[idx] else {
        print("No existe")
        return
    }
    print("Existe \(existe)")
}
ExisteValor(idx:"D")
dictError["D"]

