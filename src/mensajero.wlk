import mensajeros.*

object roberto {
	var property peso= 90
	var property andaEn = null
	
	method asignarVehiculo(vehiculo){ peso+= vehiculo.peso() }
	method puedeLlamar()= false	
}

object bici{
	method peso()=8
}

object camion{
	var property acoplados=1
	method peso()= 500 * acoplados
}

object chuckNorris{
	
	method peso()= 900
	method puedeLlamar()= true
}

object neo{
	var property tieneCredito= true
	
	method peso()=0
	method puedeLlamar()= tieneCredito
}
