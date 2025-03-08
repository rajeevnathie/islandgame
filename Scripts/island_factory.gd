extends Node

var npc_island = preload("res://Scenes/npc_island.tscn")
var last_checked_time: int = 0
var spawn_frequency: int = 10


func _process(delta: float) -> void:
	if GlobalVariables.passed_time % spawn_frequency == 0 and GlobalVariables.passed_time != last_checked_time:
		instantiateIsland()
		last_checked_time = GlobalVariables.passed_time

func instantiateIsland():
	var instance = npc_island.instantiate()
	add_child(instance)
	print("added island with size", instance.getSize())
	return instance
