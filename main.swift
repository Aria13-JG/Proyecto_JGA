import Foundation

func main(){
  var menuPrincipal = Menu()
  var almacen = Almacen()
  var zapatos = Category(name: "Zapatos")
  var lacteos = Category(name: "Lacteos")
  var quesos = Category(name: "Quesos")
  var panela = Category(name: "Panela")
  var oaxaca = Category(name: "Oaxaca")
  var escolar = Category(name: "Escolar")
  var cuadernos = Category(name: "Cuadernos")

  let tenisNike = Producto(nombre: "Nike", precio: 35.0, desc: "Tenis nike azules", categorias:[zapatos, panela] )
  let quesoLaVilla = Producto(nombre: "Queso la villa", precio: 12.0, desc: "Rico queso", categorias:[panela, oaxaca])
  let cuadernonorma = Producto(nombre: "Norma", precio: 28, desc: "Cuaderno norma rojo", categorias:[escolar, cuadernos])

  almacen.addProducts(producto: "tenisNike", cantidad: 9)
  almacen.addProducts(producto: "quesoLaVilla", cantidad: 20)
  almacen.addProducts(producto: "cuadernonorma", cantidad: 30)

  almacen.wasCosto(producto: "tenisNike", cantidad : tenisNike.precio)
  almacen.wasCosto(producto: "quesoLaVilla", cantidad : quesoLaVilla.precio)
  almacen.wasCosto(producto: "cuadernonorma", cantidad : cuadernonorma.precio)

    quesos.addSubCategory(category: oaxaca)
    lacteos.addSubCategory(category: quesos)
    menuPrincipal.addCategory(category: zapatos)
    menuPrincipal.addCategory(category: lacteos)
    
    quesos.addSubCategory(category: panela)

    menuPrincipal.display()
    almacen.showProducts()
    quesoLaVilla.showCategories()
    almacen.showProducts(by: panela)
    almacen.addCarrito(producto: "quesoLaVilla", cantidad: 10)
    almacen.addCarrito(producto: "tenisNike", cantidad: 4)
    almacen.addCarrito(producto: "cuadernonorma", cantidad: 2)
    almacen.showCarrito()
    almacen.showCosto()
    almacen.showProducts()
    
       
}

main()