object mensajeria {
	var mensajero 
	
	method contratar(alguien) {
 		mensajero= alguien
 	}
 	
 	
 	method entregarPaquete(destino)= mensajero.puedeLlegar(destino) && paquete.pago()
 	
 	method puedeLlegar(destino){
 		
 	}
 	
}

object paquete{
	var property destino
	var property pago= true
}
