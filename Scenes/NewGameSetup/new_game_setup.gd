extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_climate_drag_ended(value_changed: bool) -> void:
	var PC_island_climate = $CenterContainer/VBoxContainer/ClimateContainer/Climate.value
	print("PC_island_climate: ", PC_island_climate)


func _on_terrain_drag_ended(value_changed: bool) -> void:
	var PC_island_terrain = $CenterContainer/VBoxContainer/TerrainContainer/Terrain.value
	print("PC_island_terrain: ", PC_island_terrain)


func _on_moisture_drag_ended(value_changed: bool) -> void:
	var PC_island_moisture = $CenterContainer/VBoxContainer/MoistureContainer/Moisture.value
	print("PC_island_moisture: ", PC_island_moisture)

func _on_geological_stability_drag_ended(value_changed: bool) -> void:
	var PC_island_geological_stability = $CenterContainer/VBoxContainer/GeoStabilContainer/GeologicalStability.value
	print("PC_island_geo_stabil: ", PC_island_geological_stability)

func _on_biodiversity_drag_ended(value_changed: bool) -> void:
	var PC_island_biodiversity = $CenterContainer/VBoxContainer/BiodiversityContainer/Biodiversity.value
	print("PC_island_biodiversity: ", PC_island_biodiversity)


func _on_elemental_energy_drag_ended(value_changed: bool) -> void:
	var PC_island_element_energy = $CenterContainer/VBoxContainer/EleEnergyContainer/ElementalEnergy.value
	print("PC_island_elemental_energy: ", PC_island_element_energy)


func _on_succession_stage_drag_ended(value_changed: bool) -> void:
	var PC_island_succession_stage = $CenterContainer/VBoxContainer/SuccessionStageContainer/SuccessionStage.value
	print("PC_island_succession_stage: ", PC_island_succession_stage)


func _on_start_game_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
