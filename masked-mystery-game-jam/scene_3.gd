extends Node2D

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scene_2.tscn")

func _on_next_pressed() -> void:
	get_tree().change_scene_to_file("res://blue_scene_1.tscn")
