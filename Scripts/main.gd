extends Node3D

var npc_island = preload("res://Scenes/npc_island.tscn")
@export var tree_manager : PackedScene
var island_factory = load("res://Scripts/island_factory.gd").new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(island_factory)
	var island_instance = island_factory.instantiateIsland()
	
	var tree_manager_instance = tree_manager.instantiate()
	tree_manager_instance.island_instance = island_instance
	add_child(tree_manager_instance)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func instantiateIsland():
	var instance = npc_island.instantiate()
	add_child(instance)
	randomiseIsland(instance)
	print("added island with size", instance.getSize())
	
	var tree_manager_instance = tree_manager.instantiate()
	tree_manager_instance.island_instance = instance
	add_child(tree_manager_instance)
	
func randomiseIsland(island : Island):
	var rng = RandomNumberGenerator.new()
	
	island.changeSize(Vector3(rng.randf_range(1.0, 10.0), 0.2, randf_range(1.0, 10.0)))
