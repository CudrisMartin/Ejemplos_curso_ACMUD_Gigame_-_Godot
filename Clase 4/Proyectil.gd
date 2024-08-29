extends CharacterBody2D

## Este Script corresponde a un nodo CharacterBody2D, que se comportará como un proyectil.

# Variables de movimiento, ignorar hasta clase 6 - Fisica en Godot
var direccion = Vector2.ZERO
var rapidez = 300

func _ready():
	
	# Ajusta la velocidad del nodo, ignorar hasta clase 6 - Fisica en Godot
	set_velocity(direccion*rapidez)

# Función de movimiento, ignorar hasta clase 6 - Fisica en Godot
func _physics_process(delta):
	move_and_slide()

func _on_hitbox_body_entered(body):
	if body.is_in_group("Proyectil"):
		body.queue_free()
