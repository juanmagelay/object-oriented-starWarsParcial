import habitantes.*

class Planeta {
	const property habitantes = #{}
	var property museos = 0
	
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
}