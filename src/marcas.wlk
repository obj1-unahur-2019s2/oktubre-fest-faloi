class Marca {
	var property contenidoLupulo
	var property paisFabricacion
}

class MarcaRubia inherits Marca {
	var property graduacion
}

object enteRegulador {
	method graduacionReglamentaria() { return 2 }
}

class MarcaNegra inherits Marca {
	method graduacion() {
		return (2 * contenidoLupulo).min(enteRegulador.graduacionReglamentaria())
	}
}

class MarcaRoja inherits MarcaNegra {
	override method graduacion() {
		return super() * 1.25
	}
}