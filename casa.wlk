import cosas.*

object casa {

    const cosas = []


    method comprar(cosa) {
      cosas.add(cosa)
    }

    method cantidadDeCosasCompradas() {
      return cosas.size()
    }
    method cosas() = cosas
    method tieneComida() {
      return cosas.any({c => c.esComida()})
    }
    method vieneDeEquiparse() {
        return
        if(not cosas.isEmpty()){ 
        self.ultimoElemento().esElectrodomestico()
        || self.ultimoElemento().precio() > 50000}
        else{false}

    }
    method ultimoElemento() = cosas.last()
    
    method esDerrochona() {
      return self.sumaDelPrecioDeCosas()>= 90000

    }
    method sumaDelPrecioDeCosas() {
      return cosas.sum({cosa => cosa.precio()})
    }
    method name() {
      
    }
    method compraMasCara() {
      return cosas.max({cosa => cosa.precio()})
    }
    method precioCompraMasCara() {
      return self.compraMasCara().precio()
    }
    method electrodomesticosComprados() {
      return cosas.filter({cosa =>cosa.esElectrodomestico()})

    }
    method malaEpoca() {
      return cosas.all({c => c.esComida()})
    }
    method queFaltaComprar(lista) {
      return lista.filter({e => self.fueComprado(e)}) // e de elemento pero es un nombre elegido al azar
    }    
    method fueComprado(unaCosa) {
      return cosas.contains(unaCosa)
    }
    method faltaComida() {
      return self.cantidadDeComidaComprada() < 2
    }
    method cantidadDeComidaComprada() {
      return cosas.sum({c => c.esComida()})
    }
}