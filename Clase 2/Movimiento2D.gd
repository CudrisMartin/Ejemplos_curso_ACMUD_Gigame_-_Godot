extends Sprite2D

var velocidad:= 10
var movimiento:= Vector2i(0,90)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_position().x < 1190:
		movimiento.x += velocidad
	if get_position().x >= 1190:
		movimiento.x = 0
	set_position(movimiento)
	print(movimiento)
