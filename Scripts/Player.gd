extends CharacterBody2D

@export var MAX_SPEED = 160

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	velocity = input_vector.normalized() * MAX_SPEED
	position += velocity * delta
