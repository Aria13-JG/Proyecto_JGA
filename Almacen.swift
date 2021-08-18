import Foundation

struct Almacen{
  var inventario: [[String : Double]]
  var carrito: [[String : Double]]
  var cuenta: [[String : Double]]

  init(){
    inventario = []
    carrito = []
    cuenta = []
  }

  mutating func addProducts(producto: String, cantidad: Double){
    let minib = [producto : cantidad]
    inventario.append(minib)
  }

  func showProducts(){
  print("_________________________________________\n")
    print("-->Inventario:")
    for minib in inventario{
      print(minib)
    }
    print("_________________________________________")
  }

  func showProducts(by category: Category){
    for minib in inventario{
        print(minib.keys)
    }
    print("_________________________________________")
    print("_________________________________________")
  }

  mutating func wasCosto(producto: String, cantidad : Double){
    let multi = [producto : cantidad]
    cuenta.append(multi)
  }

  func showCosto(){
    print("\n-->Cuenta")
    for multi in cuenta{
      print("#\(multi.keys)................$ \(multi.values)")
      }
      print("\nCosto total: $ \(sumT)")
      print("_________________________________________")
  }
  
  var sumT : Double = 0
  mutating func addCarrito(producto: String, cantidad: Double){
    let chat = [producto : cantidad]
    carrito.append(chat)

    var i = 0;
    for var dicto in inventario{
      if let valor = dicto[producto]{
        let total = valor - cantidad
        dicto[producto] = total
        inventario[i] = dicto
      } 
      i += 1
    }

       var j = 0
 
       for var di in cuenta{
      if let val = di[producto]{
        let mul = val * cantidad
        sumT = sumT + mul
        di[producto] = mul
        cuenta[j] = di
        }
        j += 1
        }

  }

  func showCarrito(){
    print("\nAgregar al carrito - Mi carrito")
    for chat in carrito{
      print(chat)
    }
    print("_________________________________________")
  }

}