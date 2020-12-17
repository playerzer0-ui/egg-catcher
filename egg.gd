extends RigidBody2D

func _ready():
	pass # Replace with function body.

func _on_Area2D_area_entered(_area):
	Global.points += 1
	queue_free()
