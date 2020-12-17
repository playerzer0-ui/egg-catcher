extends Control

var menu = load("res://menu.tscn")



func _on_quit_pressed():
	get_parent().add_child(menu.instance())
