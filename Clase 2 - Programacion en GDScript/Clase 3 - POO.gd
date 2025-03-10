extends Node2D

@export var InsCarro : PackedScene

var carros : Dictionary[String, Carro]

func anadir_nuevo_carro(placa : String, marca : int, velocidad : float, color : Color):
	var c : Carro = InsCarro.instantiate()
	c.color = color
	c.marca = marca
	c.placa = placa
	c.velocidad = velocidad
	
	carros[placa] = c
	
	$Path2D.add_child(c)
	
