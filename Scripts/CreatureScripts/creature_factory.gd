extends Node

var island_instance : Node3D

var creature = preload("res://Scenes/creature.tscn")

func _ready() -> void:
	instantiateCreature()

func instantiateCreature():
	var instance = creature.instantiate()
	add_child(instance)
	instance.position = island_instance.position
	return instance
