extends Node2D

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Exposition Screen/exposition.tscn")


func _on_quit_2_pressed() -> void:
	get_tree().quit()
