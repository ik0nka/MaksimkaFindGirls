extends CharacterBody2D

var max_speed = 70 # Максимальная скорость

func _physics_process(_delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("Right") - Input.get_action_strength("Left")
	
	velocity = input_vector.normalized() * max_speed

	if velocity.x > 0:
		$AnimatedSprite2D.flip_h = false
	if velocity.x < 0:
		$AnimatedSprite2D.flip_h = true

	move_and_slide()

func _input(event):
	if event.is_action_pressed("Shift"):
		max_speed = 85
	elif event.is_action_released("Shift"):
		max_speed = 70
