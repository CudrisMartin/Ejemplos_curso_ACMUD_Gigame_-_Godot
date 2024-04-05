extends Node2D

## Este Script corresponde a un nodo Node2D, que se comportará como un escenario,
## donde observar como una bola de fuego puede eliminar parte del terreno.

## Momentos importantes:
## - Linea 11, precarga de escenas.
## - Linea 30, instanciando una escena
## - Linea 34 y 35, asignando parametros al nuevo nodo.
## - Linea 41, añadir escenas como nodos, y a su vez, como nodo hijo.

## Precarga la escena de la Bola de fuego en una constante.
const BALA = preload("res://Clase 4/BolaDeFuego.tscn")

# Metodo con el que se verifican las entradas y se crean balas con diferentes
# direcciones
func _process(delta):
	if Input.is_action_just_pressed("ui_up"):
		crear_bala(0,-1)
	if Input.is_action_just_pressed("ui_down"):
		crear_bala(0,1)
	if Input.is_action_just_pressed("ui_left"):
		crear_bala(-1,0)
	if Input.is_action_just_pressed("ui_right"):
		crear_bala(1,0)

## Crea una nueva INSTANCIA de la bala, y hace que se mueva en la dirección
## indicada en coordenadas (x,y)
func crear_bala(x,y):
	
	## Se crea una instancia de la bala, y se guarda en una variable
	var bala = BALA.instantiate()
	
	## Ajustamos parametros de la bala, tales como dirección y posición global.
	bala.direccion = Vector2(x,y)
	bala.global_position = $Marker2D.global_position
	
	## Añadimos la bala a la escena, como hijo del nodo al que está conectado este
	## script.
	## Recordemos que el nodo base es el padre de todos los nodos de la escena.
	add_child(bala)

# Borra un bloque del mundo, tema pendiente de ser cubierto.
func borrar_tile(posicion):
	var tile = $TileMap.local_to_map($TileMap.to_local(posicion))
	$TileMap.erase_cell(0,tile)
