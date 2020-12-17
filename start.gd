extends Button

var world = preload("res://world.tscn")

func _on_start_pressed():
	get_parent().add_child(world.instance())
	queue_free()
