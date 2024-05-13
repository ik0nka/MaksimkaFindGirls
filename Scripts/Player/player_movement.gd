extends CharacterBody2D

var max_speed = 20
@export var physics : bool = true
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	velocity.x = lerp(velocity.x, 0.0, 0.2) 
	var direction = Input.get_action_strength("Right") - Input.get_action_strength("Left")

	velocity.x += direction * max_speed

	if physics:
		velocity.y += gravity * delta

	_animate(direction)
	move_and_slide()

func _animate(direction):
	if direction == 0:
		$AnimatedSprite2D.play("idle")
	else:
		$AnimatedSprite2D.play("run")
		if direction < 0:
			$AnimatedSprite2D.flip_h = true
		elif direction > 0: 
			$AnimatedSprite2D.flip_h = false

func _input(event): 
	if event.is_action_pressed("Shift"):
		max_speed = 85
	elif event.is_action_released("Shift"):
		max_speed = 70
