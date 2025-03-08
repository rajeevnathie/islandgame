extends Node3D
class_name Island

#these variables are REQUIRED for each island
@onready var islandFloorMesh = get_node("RigidBody3D/MeshInstance3D")
@onready var islandFloorCollision = get_node("RigidBody3D/CollisionShape3D")

#Dictionary of variable size containing island properties
@export var island_vars: Dictionary = {
}
@export var tree_manager : PackedScene

var rng = RandomNumberGenerator.new()

#@export var climate : int
#@export var terrain : int
#@export var moisture : int
#@export var geoStability : int
#@export var biodiversity : int
#@export var elementalEnergy : int
#@export var successionStage : int

func _ready() -> void:
	randomiseIsland()
	var tree_manager_instance = tree_manager.instantiate()
	tree_manager_instance.island_instance = self
	add_child(tree_manager_instance)

#func _process(delta: float) -> void:
	#print(self.get_children())

func changeSize(size: Vector3):
	islandFloorMesh.scale = size
	islandFloorCollision.scale = size

func getSize():
	return islandFloorMesh.scale
	
func randomiseIsland():
	self.changeSize(randomiseIslandSize())
	#other randomisations will be added in this func
	self.position = randomiseIslandLoc()

func randomiseIslandSize():
	return Vector3(rng.randf_range(1.0, 10.0), 0.2, randf_range(1.0, 10.0))

func randomiseIslandLoc():
	#todo: check for collision on spawn
	return Vector3(rng.randf_range(1.0, 100.0), 0, randf_range(1.0, 100.0))
