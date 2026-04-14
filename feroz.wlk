import caperucita.*

object feroz {
    var peso = 10

    method peso() = peso
    method estaSaludable() = peso.between(20, 150)
    method aumentarBajarPeso(unidades) {
      peso = peso + unidades
    }
    method sufrirCrisis() {
        peso = 10
    }
    method comer(algo) {
        peso = peso + algo.peso() * 0.1
    }
    method correr() {
        peso = peso - 1 
    }
}