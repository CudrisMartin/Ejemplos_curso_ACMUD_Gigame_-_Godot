class_name Carro
extends Node

## Atributo publico, cualquier objeto podrá acceder a este.
var marca = "Toyota"
var velocidad = 0.2

## Atributo privado, otros objetos no podrán acceder a este, solo él mismo.
var _llantas = 4

## Atributo con metodo set y get.
var aceleracion :
	
	get: # Simplemente devuelve el valor de la variable.
		return aceleracion
	
	set(acel):
								# Antes de asignarle un valor a
		if acel > 0:			# la variable, establece que el valor
			aceleracion = acel	# sea mayor a 0 obligatoriamente.
		else:
			aceleracion = 0

## Metodo publico, cualquier objeto podrá acceder a este. 
func ver_datos_carro():
	
	## Devolvemos el valor de todos los atributos de esta clase.
	return (str(marca) + " " + str(_llantas) + " " +  str(velocidad)
			+ " " + str(aceleracion) + " " + str(_calcular_precio()))

## Metodo privado, solo cada instancia de esta clase podrá usar su propio metodo.
func _calcular_precio():
	return 300
