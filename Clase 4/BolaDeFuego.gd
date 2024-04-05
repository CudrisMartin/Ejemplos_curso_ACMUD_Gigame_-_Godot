extends CharacterBody2D

## Este Script corresponde a un nodo CharacterBody2D, que se comportará como una
## Bola de fuego capaz de destruir el escenario.

## Momentos importantes:
## - Linea 41, eliminación de nodos.

# Variables de movimiento, ignorar hasta clase 6 - Fisica en Godot
var direccion = Vector2.ZERO
var rapidez = 300

signal golpea_pared(pos)

func _ready():
	
	# Ajusta la velocidad del nodo, ignorar hasta clase 6 - Fisica en Godot
	set_velocity(direccion*rapidez)
	
	# Ajusta el angulo del Sprite del nodo, ignorar hasta clase 6 - Sprites y
	# animaciones
	$Sprite2D.rotation = direccion.angle()
	
	# Señal que ayuda a destruir bloques, ignorar hasta clase 7 - Señales en
	# Godot
	self.connect("golpea_pared",Callable(get_parent(),"borrar_tile"))

# Función de movimiento, ignorar hasta clase 6 - Fisica en Godot
func _physics_process(delta):
	move_and_slide()

func _process(delta):
	
	# Si está en una pared
	if is_on_wall():
		
		# Emite la señal "golpea_pared", ignorar hasta clase 6 - Fisica en Godot
		emit_signal("golpea_pared",$Sprite2D/Marker2D.global_position)
		
		## Metodo `queue_free()` aplicado sobre sí mismo elimina el nodo.
		self.queue_free()
