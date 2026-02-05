extends Node2D

func _on_next_pressed() -> void:
	get_tree().change_scene_to_file("res://Interrogation Screen/interrogation.tscn")
