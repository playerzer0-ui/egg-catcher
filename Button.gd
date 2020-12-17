extends Button

var menu = load("res://menu.tscn")

func _on_Button_pressed():
	get_parent().add_child(menu.instance())
	queue_free()
