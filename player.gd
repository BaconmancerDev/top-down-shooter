class_name Player extends Actor

func _unhandled_input(event: InputEvent) -> void:
	get_viewport().set_input_as_handled()

func _physics_process(_delta: float) -> void:
	if Input.is_action_pressed("shoot", true):
		_gun.shoot()

	velocity = Input.get_vector("move_left","move_right", "move_up", "move_down").normalized() * SPEED
	move_and_slide()
