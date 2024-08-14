class_name Carro
extends Node

## Variables estaticas, compartidas entre todas las instancias de una misma clase.
static var Colores = {
	0: Color("ff0000ff"),
	1: Color("00ff00ff"),
	2: Color("0000ffff"),
}

static var Marcas = {
	0: "Renault",
	1: "F1",
	2: "Toyota",
	3: "Camion"
}

## Atributo publico, cualquier objeto podrá acceder a este.
var marca : int

## Atributo publico con metodo set y get.
var velocidad: int:
	set(v): # Establece que la velocidad debe estar entre 100 y 900.
		velocidad = clamp(v,100,900)
	get: # Simplemente devuelve el valor de la variable.
		return velocidad

## Atributo privado, otros objetos no podrán acceder a este, solo él mismo.
var _placa : String = "4"

# Atributo publico que le da un color al carro.
var color : Color = Color("ffffffff")

## Metodo inicializador de esta clase, debido a que no entra al arbol de nodos.
func _init(p : String, m : int):
	_escoger_color()
	velocidad = randi_range(0,1000)
	_placa = p
	marca = m

## Metodo publico, cualquier objeto podrá acceder a este. 
func ver_datos_carro():
	## Devolvemos el valor de todos los atributos de esta clase.
	return (str(Marcas[marca]) + " " + str(_placa))

## Metodo privado, solo cada instancia de esta clase podrá usar su propio metodo.
func _escoger_color():
	color = Colores[randi_range(0,2)]
