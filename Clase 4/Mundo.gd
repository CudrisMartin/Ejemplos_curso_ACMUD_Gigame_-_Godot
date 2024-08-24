extends Node2D

const ROCK := preload("res://Clase 4/Asteroide.tscn")

## Este Script corresponde a un nodo Node2D, que se comportará como un escenario,
## donde observar como una bola de fuego puede eliminar parte del terreno.

func _on_timer_timeout():
	
	var ast = ROCK.instantiate()
	
	ast.direccion = Vector2.LEFT
	ast.global_position = Vector2(1216,randi_range(64,584))
	
	add_child(ast)
	
	$Timer.wait_time = randi_range(1,5)

func _on_area_2d_body_entered(body):
	if body.is_in_group("Proyectil"):
		body.queue_free()
