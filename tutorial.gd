extends Button

var tutorial = preload("res://tutorial.tscn")

func _on_tutorial_pressed():
	get_parent().add_child(tutorial.instance())
	queue_free()
