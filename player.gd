extends KinematicBody2D
var SPEED = 250
var velocity = Vector2.ZERO

func _physics_process(_delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector = input_vector.normalized() * SPEED
	
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()
	
	if input_vector != Vector2.ZERO:
		velocity = input_vector
	else:
		velocity = Vector2.ZERO
	
	velocity = move_and_slide(velocity)


