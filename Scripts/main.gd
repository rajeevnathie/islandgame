extends Node3D

var npc_island = preload("res://Scenes/npc_island.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	instantiateIsland()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func instantiateIsland():
	var instance = npc_island.instantiate()
	add_child(instance)
	randomiseIsland(instance)
	print("added island with size", instance.getSize())
	
	
func randomiseIsland(island : Island):
	var rng = RandomNumberGenerator.new()
	
	island.changeSize(Vector3(rng.randf_range(1.0, 10.0), 0.2, randf_range(1.0, 10.0)))

