class Arma {
	method potenciaOtorgada(unSoldado)
}

class Pistolete inherits Arma {
	var property largo
	
	override method potenciaOtorgada(unSoldado) {
		return
			if (unSoldado.edad() > 30) { largo * 3 } 
			else { largo * 2 }
	}
}

class Espadon inherits Arma {
	var property peso
	
	override method potenciaOtorgada(unSoldado) {
		return
			if (unSoldado.edad() < 40) { peso / 2 }
			else { 6 }
	}
}
