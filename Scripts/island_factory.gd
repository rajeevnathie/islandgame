extends Node

var npc_island = preload("res://Scenes/npc_island.tscn")
var rng = RandomNumberGenerator.new()
var last_checked_time: int = 0
var spawn_frequency: int = 10


func _process(delta: float) -> void:
	if GlobalVariables.passed_time % spawn_frequency == 0 and GlobalVariables.passed_time != last_checked_time:
		instantiateIsland()
		last_checked_time = GlobalVariables.passed_time

func instantiateIsland():
	var instance = npc_island.instantiate()
	add_child(instance)
	randomiseIsland(instance)
	print("added island with size", instance.getSize())
	return instance

func randomiseIsland(island : Island):
	island.changeSize(randomiseIslandSize())
	#other randomisations will be added in this func
	island.position = randomiseIslandLoc()

func randomiseIslandSize():
	return Vector3(rng.randf_range(1.0, 10.0), 0.2, randf_range(1.0, 10.0))

func randomiseIslandLoc():
	#todo: check for collision on spawn
	return Vector3(rng.randf_range(1.0, 100.0), 0, randf_range(1.0, 100.0))
