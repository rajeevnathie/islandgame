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
	print("added island")
	add_child(instance)
