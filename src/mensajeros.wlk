object mensajeria {
	var mensajero 
	var property mensajeros=[]
	
	method contratar(alguien) {
 		mensajero= alguien
 		mensajeros.add(alguien)
 	}
 	
 	method despedirA(alguien){ mensajeros.remove(alguien)}
 	
 	method despedirATodos(){mensajeros.removeAll(mensajeros)}
 	
 	method mensajariaGrande()= mensajeros.size() > 2
 	
 	method primeroPuedeEntregar()= paquete.puedeSerEnviadoPor(mensajeros.get(0))
 	
 	method entregarPaquete(destino)= destino.puedePasar(mensajero) && paquete.pago()
 	
 	method pesoDelUltimo()= mensajeros.last().peso()

 	method mensajeriaPuedeEntregar(){
 		return mensajeros.any({alguien=> paquete.puedeSerEnviadoPor(alguien)}) 
 	}
 
 	method paqueteFacil(){
 		return mensajeros.all({alguien=> paquete.puedeSerEnviadoPor(alguien)})
 	}
 	
 	method mensajerosCapaces(){
 		return mensajeros.filter({alguien=> paquete.puedeSerEnviadoPor(alguien)})
 	}
 	
 	method sobrePeso()= mensajeros.sum({alguien=>alguien.peso()}) > 500
 	
 	method enviarPaquete(){
 		
 	}
 }

object paquete{
	var destino= null
	var pago=false
	
	method pagar(){pago = true}
	method destino(lugar){destino=lugar}
	method pago()= pago
	method puedeSerEnviadoPor(alguien)= self.pago() && destino.puedePasar(alguien)
}