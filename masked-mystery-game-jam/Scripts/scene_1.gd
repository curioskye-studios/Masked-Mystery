extends Node2D

@onready var description = $Description

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scene_4.tscn")

func _on_next_pressed() -> void:
	get_tree().change_scene_to_file("res://scene_2.tscn")



func _on_clock_pressed() -> void:
	description.text = "Greens Prized Grandfather Clock. Notorious for being 2 hours late"
