extends Node2D

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Autopsy Screen/autopsy.tscn")

func _on_next_pressed() -> void:
	get_tree().change_scene_to_file("res://Investigation Screen/Scenes/blue_scene_1.tscn")
