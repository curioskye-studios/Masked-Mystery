extends Node2D

@onready var ques1 = $Question_1/OptionButton
@onready var ques2 = $Question_2/OptionButton
@onready var ques3 = $Question_3/OptionButton


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Investigation Screen/Scenes/blue_scene_1.tscn")

func _on_texture_button_pressed() -> void:
	print("This is 1: ", ques1.get_selected_id()," This is 2:", ques2.get_selected_id(), " This is 3:" , ques3.get_selected_id())
	if ques1.get_selected_id() == 1 and ques2.get_selected_id() == 3 and ques3.get_selected_id() == 2:
		get_tree().change_scene_to_file("res://Outro Screen/Scenes/outro_win.tscn")
	else:
		get_tree().change_scene_to_file("res://Outro Screen/Scenes/outro_lose.tscn")
