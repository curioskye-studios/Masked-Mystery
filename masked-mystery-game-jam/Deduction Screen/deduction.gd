extends Node2D

@onready var q1_dropdrown = $Question_1/OptionButton
@onready var q2_dropdrown = $Question_2/OptionButton
@onready var q3_dropdrown = $Question_3/OptionButton


func _on_texture_button_pressed() -> void:
	
	var q1_answer = q1_dropdrown.get_selected_id()
	var q2_answer = q2_dropdrown.get_selected_id()
	var q3_answer = q3_dropdrown.get_selected_id()
	
	if  q1_answer == 1 and q2_answer == 3 and q3_answer == 2:
		get_tree().change_scene_to_file("res://Outro Screen/Scenes/outro_win.tscn")
	else:
		get_tree().change_scene_to_file("res://Outro Screen/Scenes/outro_lose.tscn")
