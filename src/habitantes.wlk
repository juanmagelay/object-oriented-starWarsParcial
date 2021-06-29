import planeta.*

class Persona {
	const property edad = 0
	const property potencia = 20
	
	method inteligencia() {
		return 
			if (self.edad().between(20, 40) ) { 12 }
			else { 8 }
	}
	method esDestacada() {
		return edadesDestacadas.edades().any( { e => e == self.edad() } )
	}
}

object edadesDestacadas {
	const property edades = [25, 35]
}

class Atleta inherits Persona {
	var property masaMuscular = 4
	var property tecnicas = 2
	
	override method potencia() {
		return super() + (self.masaMuscular() * self.tecnicas())
	}
	override method esDestacada() {
		return super() or self.tecnicas() > 5
	}
	method entrenar(dias) {
		masaMuscular = masaMuscular + dias / 5	
	}
	method aprenderTecnica() {
		tecnicas = tecnicas + 1
	}
}

class Docente inherits Persona {
	var property cursos = 0
	
	override method inteligencia() {
		return super() + self.cursos() * 2	
	}
	override method esDestacada() {
		return self.cursos() > 3
	}
}
