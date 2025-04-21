extends Node3D
@onready var gate = $"puzles/Large Gate"
@onready var large_gate = $"puzles/Large Gate2"
@onready var gate_2 = $puzles/Gate
@onready var gate2 = $puzles/Gate2
@onready var large_gate3 = $puzles/large_gate3
@onready var gate3 = $puzles/Gate3
@onready var gate4 = $puzles/Gate4
@onready var gate5 = $puzles/Gate5
@onready var gate6 = $puzles/Gate6
@onready var gate7 = $puzles/Gate7
@onready var gate9 = $puzles/Gate9
@onready var gate8 = $puzles/Gate8
@onready var gate10 = $puzles/Gate10
@onready var gate11 = $puzles/Gate11
@onready var gate12 =$puzles/Gate12
@onready var gate13 =$puzles/Gate13
@onready var gate14 = $puzles/Gate14
@onready var large_gate_3 = $"puzles/Large Gate_3"

func _on_power_reciever_power_recieved() -> void:
	gate._open()



func _on_green_reciever_power_recieved() -> void:
	large_gate.call("_open")



func _on_grabpack_item_collected() -> void:
	Game.set_objective("НАЙДИТЕ GRABPACK 2.0", 5)
	pass # Replace with function body.



func _on_grabpack_item_2_collected() -> void:
	Game.tooltip("новый grabpack 2.0 может менять руки и многое другое", 5)
	pass # Replace with function body.


func _on_hand_notify_area_entered(area: Area3D) -> void:
	Game.set_objective("найдите фиолетовоюу руку", 5)


func _on_blue_scanner_scan_complete() -> void:
	gate_2._open()



	

func _on_power_reciever_2_power_recieved() -> void:
	gate2._open()


func _on_collectable_hand_4_collected() -> void:
	Game.set_objective("используйте новуюу руку", 5)
	Game.tooltip("нажмите на 2", 5)
	pass # Replace with function body.



	



 


func _on_battery_socket_battery_placed() -> void:
	gate3.call("_open")
	pass # Replace with function body.


func _on_battery_socket_battery_removed() -> void:
	gate3.call("_close")
	pass # Replace with function body.


func _on_gate_3_opened() -> void:
	Game.set_objective("найдите деш руку", 5)
	pass # Replace with function body.


func _on_purple_scanner_scan_complete() -> void:
	gate4._open()
	pass # Replace with function body.



func _on_collectable_hand_6_collected() -> void:
	Game.set_objective("молодцы теперь идите сканируйте руку", 5)
	pass # Replace with function body.


func _on_playwatch_collected() -> void:
	Game.tooltip("нажмиите на т чтобы использовать камеры", 3)
	pass # Replace with function body.


func _on_vhs_tv_tape_finished() -> void:
	gate5._open()
	pass # Replace with function body.


func _on_green_scanner_scan_complete() -> void:
	gate5._open()
	pass # Replace with function body.


func _on_blue_scanner_2_scan_complete() -> void:
	gate6._open()
	pass # Replace with function body.


func _on_lever_pulled(direction: Variant) -> void:
	if direction:
		gate7.call("_open")
	else:
		gate7.call("_close")
	pass # Replace with function body.


func _on_button_3_pressed() -> void:
	gate9._open()
	gate8._close()
	pass # Replace with function body.


func _on_button_2_pressed() -> void:
	gate8._open()
	gate9._close()
	pass # Replace with function body.


func _on_battery_socket_2_battery_placed() -> void:
	gate10.call("_open")
	pass # Replace with function body.


func _on_battery_socket_2_battery_removed() -> void:
	gate10.call("_close")
	pass # Replace with function body.


func _on_gate_4_opened() -> void:
	$AudioStreamPlayer.play()
	pass # Replace with function body.


func _on_large_button_pressed() -> void:
	gate11._open()
	pass # Replace with function body.


func _on_large_button_released() -> void:
	gate11._close()
	pass # Replace with function body.


func _on_green_reciever_2_power_recieved() -> void:
	gate12._open()
	pass # Replace with function body.


func _on_power_reciever_3_power_recieved() -> void:
	gate13._open()
	$AudioStreamPlayer2.play()
	pass # Replace with function body.


func _on_flare_scanner_scanned_flare() -> void:
	gate14._open()
	pass # Replace with function body.


func _on_area_3d_body_entered(body: Node3D) -> void:
	large_gate_3._open()
	pass # Replace with function body.
