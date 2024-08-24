extends Sprite2D

## Precarga la escena de la Bola de fuego en una constante.
const BALA = preload("res://Clase 4/BolaDeFuego.tscn")

var dir : float = 0

@export var tope_max : int = 0
@export var tope_min : int = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position.y = clamp(global_position.y + dir*500*delta,tope_max,tope_min)

func _input(event):
	if event.is_action_pressed("ui_up") or event.is_action_pressed("ui_down"):
		dir = Input.get_axis("ui_up","ui_down")
	elif event.is_action_released("ui_up") or event.is_action_released("ui_down"):
		dir = 0
	if event.is_action_pressed("ataque"):
		_disparar_bala()

func _disparar_bala():
	
	## Se crea una instancia de la bala, y se guarda en una variable
	var bala = BALA.instantiate()
	
	## Ajustamos parametros de la bala, tales como dirección y posición global.
	bala.global_position = global_position
	bala.direccion = Vector2.RIGHT
	
	## Añadimos la bala a la escena, como hermana del nodo al que está conectado este script.
	add_sibling(bala)
