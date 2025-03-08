extends Node3D

var npc_island = preload("res://Scenes/npc_island.tscn")
var island_factory = load("res://Scripts/island_factory.gd").new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(island_factory)
	island_factory.instantiateIsland()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
