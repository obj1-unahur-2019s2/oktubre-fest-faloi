class Jarra {
	var property marca
	var property capacidad
	
	method contenidoAlcohol() {
		return capacidad * marca.graduacion()
	}
}