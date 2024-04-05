extends Node

## Objeto de la clase que creamos, Carro
var car = Carro.new()

##Objeto propio de Godot, que nos permite crear numeros aleatorios
var rng = RandomNumberGenerator.new()

## Se llama cuando el nodo ingresa al árbol de escena por primera vez,
## comparable al constructor de otros lenguajes.
func _ready():
	
	## Asigna un valor al atributo `aceleración` de la instancia del objeto Carro
	car.aceleracion = -2
	
	## Imprimimos por pantalla el resultado que arroja el metodo
	## `ver_datos_carro()` del objeto `car`
	print(car.ver_datos_carro())
	
	## Imprimimos por pantalla el resultado que arroja el metodo
	## `randf()` del objeto `rng`
	print(rng.randf())


# Llamado en cada fotograma. 'delta' es el tiempo transcurrido desde el cuadro
# anterior.
func _process(delta):
	
	## Imprimimos el valor del tiempo que le queda para terminar al temporizador
	## que ubicamos en el arbol de nodos.
	if ($Timer.time_left > 0):
		print(int($Timer.time_left))
