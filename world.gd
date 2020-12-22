extends Node2D

var egg = preload("res://egg.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_Timer_timeout():
	var egg_position = Vector2(rand_range(20, 300), rand_range(-60, -10))
	Global.instance_node(egg, egg_position, self)

func _on_diff_timeout():
	if $Timer.wait_time > 0.25:
		$Timer.wait_time -= 0.5
