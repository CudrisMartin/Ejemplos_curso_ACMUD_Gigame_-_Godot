extends Node2D

const CARROS = preload("res://Clase 3/CarroImp.tscn")

# Se crea una nueva escena CarroImpl al presionarse el boton.
func _on_button_pressed():
	var car = CARROS.instantiate()
	$Path2D.add_child(car)
