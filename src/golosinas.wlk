import sabores.*

object bombon {
	var property gramos = 15
	
	method precio(){ 
		return 5
	}
	method sabor(){
		return frutilla
	}
	method esLibreDeGluten(){
		return true
	}
	method recibeMordizco(){
	   gramos = (gramos * 0.8) - 1
	}
	
}

object alfajor {
	var property gramos = 300
	
	method precio(){
		return 12
	}
	method sabor(){
		return chocolate
	}
	method esLibreDeGluten(){
		return false
	}
	method recibeMordizco(){
	   gramos = (gramos * 0.8) 
	}
}

object caramelo {
	var property gramos = 5
	
	method precio(){ 
		return 1
	}
	method sabor(){
		return frutilla
	}
	method esLibreDeGluten(){
		return true
	}
	method recibeMordizco(){
	   gramos = 0.max(gramos-1)
	} 
}

object chupetin {
	var property gramos = 7
	
	method precio(){
		return 2
	}
	method sabor(){
		return naranja
	}
	method esLibreDeGluten(){
		return true
	}
	method recibeMordizco(){
	   if(gramos > 2){
	   	 gramos = gramos * 0.9
	   }
	}
}

object oblea {
	var property gramos = 250
	
	method precio(){ 
		return 5
	}
	method sabor(){
		return vainilla
	}
	method esLibreDeGluten(){
		return false
	}
	method recibeMordizco(){
	   if(gramos > 70){
	   	  gramos = gramos * 0.5
	   }
	   else{
	   	  gramos = gramos * 0.75
	   }
	}
}

object chocolatin {
	var property gramos 
	
	method precio(){
		return gramos * 0.5
	}
	method sabor(){
		return chocolate
	}
	method esLibreDeGluten(){
		return false
	}
	method recibeMordizco(){
	   gramos = 0.max(gramos -2)
	}
}

object golosinaBaniada {
	var property golosina
	var pesoBaniado = 4
	
	method precio(){ 
	   return 2 + golosina.precio()
	}
	method sabor(){
		return golosina.sabor()
	}
	method gramos(){
		return pesoBaniado + golosina.gramos()
	}
	method esLibreDeGluten(){
		return golosina.esLibreDeGluten()
	}
	method recibeMordizco(){
	   pesoBaniado -= 0.max(pesoBaniado-2)
	   golosina.recibeMordizco()
    }
}
	
object pastillaTutiFruti {
	var property gramos = 5
	var property esLibreDeGluten
	var saborActual = frutilla
	var cantModiscos = 0
	const sabores = [frutilla, chocolate, naranja]
	
	method precio(){ 
		return if (esLibreDeGluten) {7} else {10}
	}
	method sabor(){
		return saborActual
	}
	method esLibreDeGluten(){
		return esLibreDeGluten
	}
	method recibeMordizco(){
	   saborActual = sabores.get(cantModiscos)
	   cantModiscos ++
	   if(cantModiscos == 3){
	   	 cantModiscos = 0
	   }
	}
}