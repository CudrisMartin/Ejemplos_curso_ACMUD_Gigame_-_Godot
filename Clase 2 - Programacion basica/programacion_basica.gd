extends Control

@onready var dato_label1 = $HBoxContainer/VBoxContainer4/Label
@onready var dato_label2 = $HBoxContainer/VBoxContainer4/Label2
@onready var dato_label3 = $HBoxContainer/VBoxContainer4/Label3

var caracteristica1: float = 0
var caracteristica2: float = 0
var caracteristica3: float = 0

# Getter y Setter para Caracteristica1
func get_caracteristica1() -> float:
	caracteristica1 = dato_label1.get_text().to_float()
	return caracteristica1

func set_caracteristica1(value: float) -> void:
	caracteristica1 = value

# Getter y Setter para Caracteristica2
func get_caracteristica2() -> float:
	caracteristica2 = dato_label2.get_text().to_float()
	return caracteristica2

func set_caracteristica2(value: float) -> void:
	caracteristica2 = value

# Getter y Setter para Caracteristica3
func get_caracteristica3() -> float:
	caracteristica3 = dato_label3.get_text().to_float()
	return caracteristica3

func set_caracteristica3(value: float) -> void:
	caracteristica3 = value

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
