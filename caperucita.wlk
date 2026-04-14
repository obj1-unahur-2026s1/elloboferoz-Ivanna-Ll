import feroz.*

object caperucita {
    method peso() = 60 + canasta.peso()
    method cruzaElBosque() {
      canasta.perderManzana()
    }
} 
object canasta {
  var cantidadManzana = 6  
  
  method cantidadManzana() = cantidadManzana
  method peso() = cantidadManzana * manzana.peso()
  method agregarManzana(cantidad) {
      cantidadManzana = cantidadManzana + cantidad
    }
  method perderManzana() {
     cantidadManzana = cantidadManzana -1
  }
}

object manzana {
  method peso() = 0.2
}

object abuelita {
    method peso() = 50
} 

object cazador {
    var energia = 15
    var peso = 0
    var municiones = 5

    method peso() = peso
    method energia() = energia
    method municiones() = municiones
    method esFuerte() = energia.between(30, 50) && peso >= 30 && municiones > 8
    method cargarMuniciones(cantidad) {
      municiones = municiones + cantidad
    }
    method comer(alimento) {
        energia = energia + alimento.energia()
        peso = peso + alimento.peso()
    }
    method atrapar(sujeto) {
      if (self.esFuerte()) sujeto.sufrirCrisis() 
    }
}

object hamburguesa {
  method energia() = 5
  method peso() = 20
}
object banana {
  method energia() = 20
  method peso() = 5
}
