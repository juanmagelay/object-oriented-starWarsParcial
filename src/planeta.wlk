import habitantes.*

class Planeta {
	const property habitantes = #{}
	var property museos = 0
	var property longitudMurallas = 0
	
	method delegacionDiplomatica() {
		return self.habitantes().filter( { h => h.esDestacada() } )
	}
	method valorInicialDeDefensa() {
		return self.habitantes().count( { h => h.potencia() >= 30 } )
	}
	method esCulto() {
		return self.museos() >= 2 and
		self.habitantes().all( { h => h.inteligencia() >= 10 } )
	}
	method potenciaReal() {
		return self.habitantes().sum( { h => h.potencia() } )
	}
	method construirMurallas(cantidad) {
		longitudMurallas = longitudMurallas + cantidad 
	}
	method fundarMuseo() {
		museos = museos + 1
	}
	method potenciaAparente() {
		return self.maximaPotencia() * self.habitantes().size()
	}
	method maximaPotencia() {
		return self.habitantes().max( { h => h.potencia() } ).potencia()
	}
	method necesitaReforzarse() {
		return self.potenciaAparente() >= self.potenciaReal() * 2
	}
	method recibirTributos() {
		self.habitantes().forEach( { h => h.ofrecerTributo(self) } )
	}
}