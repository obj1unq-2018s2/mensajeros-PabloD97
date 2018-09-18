import mensajeros.*

object roberto {

	var property andaEn 
	
	method peso()= if(andaEn = bici) bici.peso() else if(andaEn = camion) camion.peso() 
	method puedeLlamar()= false	
}

object bici{
	method peso()=8
}

object camion{
	var property acoplado=1
	method peso()= 500 * acoplado
}

object chuckNorris{
	
	method peso()= 900
	method puedeLamar()= true
}

object neo{
	var property tieneCredito= true
	
	method puedeLlamar()= tieneCredito
}
