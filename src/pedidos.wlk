class Pedido {
	
	var property distancia 
	var property tiempo
	var property pasajeros
	var property coloresF = #{}
	
	
	method velocidadRequerida() {
		
		return distancia / tiempo
		
	}
	
	method satisfacerPedido(coche) {
		
		return coche.velocidadMaxima() > self.velocidadRequerida() + 10 
				and coche.capacidad()>= pasajeros
				and not coloresF.contains(coche.color())  
	}
	
	method acelerar() {tiempo =- 1}
	
	method relajar () {tiempo =+ 1}
	
	
}