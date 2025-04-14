class_name Actor extends CharacterBody2D

@onready var _gun: Gun = $Gun

const SPEED = 90

var health = 10

func take_damage(amount: int) -> void:
	health -= amount
	
	if health <= 0:
		queue_free()
