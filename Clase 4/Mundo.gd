extends Node2D

## Este script demuestra como se manejan nodos y escenas precargadas dentro de Godot.

## Se carga la escena en una constante, para tenerla lista por si se necesita instanciar.
const ROCK := preload("res://Clase 4/Asteroide.tscn")

#Esta función está conectada al temporizador, y se ejecuta cada que este termina.
func _on_timer_timeout():
	
	## Precarga la escena de la Bola de fuego en una constante.
	var ast = ROCK.instantiate()
	
	# Se ajustan las variables de la roca, para que aparezca en cierta posición y
	# se mueva en una dirección.
	ast.direccion = Vector2.LEFT
	ast.global_position = Vector2(1216,randi_range(64,584))
	
	## Se añade la nueva roca al arbol de nodos como hija del nodo actual.
	add_child(ast)
	
	# Se le da una duración aleatoria al timer para que vuelva a empezar.
	$Timer.wait_time = randi_range(1,5)

## Si cualquier cuerpo del grupo proyectil entra a la area 2D, se elimina tanto del arbol
## de nodos como de la memoria RAM.
func _on_area_2d_body_entered(body):
	if body.is_in_group("Proyectil"):
		body.queue_free()
