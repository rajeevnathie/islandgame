extends Node3D

@export var tree_scene : PackedScene
@export var max_num_trees : int = 15

var tree_amount := 0
var last_tree_spawned_time := 0
var island_amounts = 0

var island_instance : Node3D
var island_size : Vector3


const MAX_TREES := 15

func _ready() -> void:
	if island_instance:
		island_size = island_instance.getSize()

func _process(delta: float) -> void:
	if island_instance and tree_amount < MAX_TREES:
		place_trees_on_island()

func place_trees_on_island():
	if GlobalVariables.passed_time - last_tree_spawned_time >= 5:
		print('Placing tree')
		last_tree_spawned_time = GlobalVariables.passed_time
		var x_pos = randf_range(-island_size.x / 2, island_size.x / 2)
		var z_pos = randf_range(-island_size.z / 2, island_size.z / 2)
		
		var tree_position = Vector3(x_pos, 0, z_pos)
		
		add_tree_to_island(tree_position)
		tree_amount += 1
		

func add_tree_to_island(position: Vector3):
	var tree_instance = tree_scene.instantiate()
	tree_instance.position = position
	add_child(tree_instance)
	
