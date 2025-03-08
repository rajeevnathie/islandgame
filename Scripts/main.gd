extends Node3D

var npc_island = preload("res://Scenes/npc_island.tscn")
var island_factory = load("res://Scripts/island_factory.gd").new()

@export var tree_manager : PackedScene

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
	
