extends Node3D
class_name Island

#these variables are REQUIRED for each island
@onready var islandFloorMesh = get_node("RigidBody3D/MeshInstance3D")
@onready var islandFloorCollision = get_node("RigidBody3D/CollisionShape3D")

#Dictionary of variable size containing island properties
@export var island_vars: Dictionary = {
}

#@export var climate : int
#@export var terrain : int
#@export var moisture : int
#@export var geoStability : int
#@export var biodiversity : int
#@export var elementalEnergy : int
#@export var successionStage : int

func changeSize(size: Vector3):
	islandFloorMesh.scale = size
	islandFloorCollision.scale = size

func getSize():
	return [islandFloorMesh.scale, islandFloorCollision.scale]
