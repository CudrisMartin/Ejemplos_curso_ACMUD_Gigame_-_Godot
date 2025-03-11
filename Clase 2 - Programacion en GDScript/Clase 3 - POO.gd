extends Node2D

@export var InsCarro : PackedScene
@export var Camara : Camera2D
@export var Interfaz : Control
@export var InfoCarros : PanelContainer

var carros : Dictionary[String, Carro]

func anadir_nuevo_carro(placa : String, marca : int, velocidad : float, color : Color):
	var c : Carro = InsCarro.instantiate()
	c.color = color
	c.marca = marca
	c.placa = placa
	c.velocidad = velocidad
	
	carros[placa] = c
	
	$Path2D.add_child(c)

func _on_interfaz_clase_2_carro_seleccionado(placa: String) -> void:
	remove_child(Camara)
	carros[placa].add_child(Camara)
	Camara.enabled = true
	Interfaz.hide()
	InfoCarros.show()
	InfoCarros.mostrar_info(carros[placa])
	
