extends Node

enum Scenes{
	INTRO,
	PF,
	POO
}

var precargadas = {
	0: preload("res://Clase 1 - Introduccionn/Clase 1.tscn"),
	1: preload("res://Clase 2 - Programacion basica/Clase 2.tscn"),
	2: preload("res://Clase 3 - POO/Clase 3.tscn"),
}

func change_scene_to(option : Scenes):
	get_tree().change_scene_to_packed(precargadas[option])
	

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("1"):
		change_scene_to(Scenes.INTRO)
		return
	if event.is_action_pressed("2"):
		change_scene_to(Scenes.PF)
		return
	if event.is_action_pressed("3"):
		change_scene_to(Scenes.POO)
		return
