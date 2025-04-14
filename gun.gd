class_name Gun extends Sprite2D

const Bullet: PackedScene = preload("res://bullet.tscn")

@onready var _fire_rate: Timer = $FireRate

func shoot() -> void:
	if !_fire_rate.is_stopped():
		return
		
	var bullet_inst = Bullet.instantiate()
	var bullet_start_pos = global_position
	var bullet_direction: Vector2 =  global_position.direction_to(get_global_mouse_position())
	get_tree().current_scene.add_child(bullet_inst)
	bullet_inst.start(bullet_start_pos, bullet_direction)
	_fire_rate.start()
