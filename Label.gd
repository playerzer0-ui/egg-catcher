extends Label

func _process(_delta):
	text = str(Global.points)
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()
