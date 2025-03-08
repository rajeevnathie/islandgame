extends Node

var passed_time : int = 0
var exact_time: float = 0.0
var time_multiplier: float = 1.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	exact_time += delta * time_multiplier
	passed_time = int(exact_time)

func set_time_multiplier(multiplier: float):
	time_multiplier = multiplier
