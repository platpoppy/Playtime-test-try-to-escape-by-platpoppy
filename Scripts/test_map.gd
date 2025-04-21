extends Node3D

var power_direct: bool = false
var power_direct_levers: bool = false
@onready var gate_4 = $Passages/Gate4
@onready var mobible_spawner_3d: MobibleSpawner3D = $Mobible/MobibleSpawner3D

func check_power_direct_room():
	if power_direct and power_direct_levers:
		gate_4.opengate()
	elif gate_4.open:
		gate_4.closegate()

func _on_lever_linker_levers_down():
	power_direct_levers = true
	check_power_direct_room()
func _on_lever_linker_levers_up():
	power_direct_levers = false
	check_power_direct_room()
func _on_power_director_button_pressed():
	power_direct = !power_direct
	check_power_direct_room()

func _on_hand_scanner_right_3_scan_success():
	Grabpack.remove_hand("RedHand")

func _on_button_2_pressed():
	Game.load_scene("res://Objects/Gameplay/Extra/Scripts/data_space.tscn")

func _on_button_pressed() -> void:
	mobible_spawner_3d.spawn()


func _on_ready() -> void:
	Game.set_objective("найдите желтую руку")



func _on_objective_treeges_ready() -> void:
	Game.set_objective("найдите батарейку")


func _on_event_trigger_ready() -> void:
	Game.set_objective("найдите батарейку")


func _on_objective_trigger_ready() -> void:
	pass # Replace with function body.
