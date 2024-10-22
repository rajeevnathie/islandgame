extends Node3D
class_name Island

@onready var islandFloorMesh = get_node("RigidBody3D/MeshInstance3D")
@onready var islandFloorCollision = get_node("RigidBody3D/CollisionShape3D")
@export var Flora : int

func changeSize(size: Vector3):
	islandFloorMesh.scale = size
	islandFloorCollision.scale = size

func getSize():
	return [islandFloorMesh.scale, islandFloorCollision.scale]
