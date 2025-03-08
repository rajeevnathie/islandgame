extends Node

var npc_island = preload("res://Scenes/npc_island.tscn")
var rng = RandomNumberGenerator.new()

func instantiateIsland():
	var instance = npc_island.instantiate()
	add_child(instance)
	randomiseIsland(instance)
	print("added island with size", instance.getSize())

func test():
	print("hoi")

func randomiseIsland(island : Island):
	island.changeSize(randomiseIslandSize())
	#other randomisations will be added in this func
	#island.position = Vector3(2, 1, 2)

func randomiseIslandSize():
	return Vector3(rng.randf_range(1.0, 10.0), 0.2, randf_range(1.0, 10.0))
