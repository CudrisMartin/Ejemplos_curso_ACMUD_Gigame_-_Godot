extends CharacterBody2D

## Script que maneja el jugador que maneja sus animaciones con un AnimatedSprite.

const SPEED = 400.0
const JUMP_VELOCITY = -600.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	
	if not is_on_floor():
		velocity.y += gravity * delta
		
		## Dependiendo de la velocidad de caida, reproduce animación de caida o salto. 
		if velocity.y > 0:
			$AnimatedSprite2D.play("fall")
		else:
			$AnimatedSprite2D.play("jump")
	
	## Si se presiona la tecla de salto, reproduce animación de salto. 
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		$AnimatedSprite2D.play("jump")
	
	var direction = Input.get_axis("ui_left", "ui_right")
	
	## Dependiendo de la dirección de movimiento, reproduce animación de movimiento o estar quieto. 
	if direction:
		velocity.x = direction * SPEED
		$AnimatedSprite2D.scale.x = direction
		if is_on_floor():
			$AnimatedSprite2D.play("run")
	else:
		if is_on_floor():
			$AnimatedSprite2D.play("idle")
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
