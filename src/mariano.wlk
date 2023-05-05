import golosinas.*
import sabores.*

object mariano {
	const golosinas = []
	
	method comprar(unaGolosina){
		golosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina){
		golosinas.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas(){
		return golosinas.size()
	}
	method tieneLaGolosina(unaGolosina){
		return golosinas.contains(unaGolosina)
	}
	method probarGolosinas(){
		golosinas.forEach({golosina => golosina.recibeMordizco()})
	}
	method hayGolosinaSinTACC(){
		return golosinas.any( {dulce => dulce.esLibreDeGluten()} )
	}
	method preciosCuidados(){
		return golosinas.all({golosina => golosina.precio() <= 10} )
	}
	method golosinaDeSabor(unSabor){
		return golosinas.find({golosina => golosina.sabor() == unSabor})
	}
	method golosinasDeSabor(unSabor){
		return golosinas.filter({golosina => golosina.sabor() == unSabor})
	}
	method sabores(){
		return golosinas.map({golosina => golosina.sabor()}).asSet()
	}
	method golosinaMasCara(){
		return golosinas.max({golosina => golosina.precio()})
	}
	
	method pesoGolosinas(){
		return golosinas.sum({golosina =>golosina.gramos()})
	}
	
	method golosinasFaltantes(golosinasDeseada){
		const golosinasDeseadas = golosinasDeseada.asSet()
		return golosinasDeseadas.difference(golosinas.asSet())
	}
	method gustosFaltantes(gustosDeseados){
		const gustosDeseadas = gustosDeseados.asSet()
		return gustosDeseadas.difference(self.sabores())
	}
}
