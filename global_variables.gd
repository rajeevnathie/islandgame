extends Node

var passed_time : float = 0.0
var time_multiplier: float = 1.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	passed_time += delta * time_multiplier

func set_time_multiplier(multiplier: float):
	time_multiplier = multiplier
