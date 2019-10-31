class Persona {
	var property peso
	var property jarrasCompradas = []
	var property leGustaMusica
	var property nivelAguante
	
	method estaEbria() {
		return self.totalAlcoholIngerido() * peso > nivelAguante
	}
	
	method totalAlcoholIngerido() {
		return jarrasCompradas.sum { j => j.contenidoAlcohol() }
	}
}

class Belga inherits Persona {
	method leGusta(marca) {
		return marca.contenidoLupulo() > 4
	}
}

class Checo inherits Persona {
	method leGusta(marca) {
		return marca.graduacion() > 0.08
	}
}

class Aleman inherits Persona {
	method leGusta(marca) {
		return true
	}
}