extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _integrate_forces(state):
	var body = get_colliding_bodies()
	
	print(body)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
