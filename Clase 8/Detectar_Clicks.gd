extends Sprite2D

func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_RIGHT):
		
		if get_rect().has_point(to_local(get_global_mouse_position())):
			global_position = get_global_mouse_position()
			$AnimationPlayer.play("tambaleo")

func _input(event):
	if (
			event is InputEventMouseButton and event.pressed
			and event.button_index == MOUSE_BUTTON_LEFT
		):
			
			if get_rect().has_point(to_local(event.position)):
				print("Imagen clickeada con click izquierdo")
