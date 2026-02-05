extends Node2D

@onready var description = $DescriptionBox/Description

func _on_carpet_pressed() -> void:
	description.text = "A fancy carpet. Seems to be in pristine condition. "

func _on_chair_pressed() -> void:
	description.text = "Fredrick’s beloved cat. Sitting wide awake. She must be hungry. "

func _on_clock_pressed() -> void:
	description.text = "Fredrick’s prized grandfather clock. Notorious for being 2 hours late. "

func _on_glass_pressed() -> void:
	description.text = "A glass full of wine. Fredrick’s favourite. "

func _on_knife_pressed() -> void:
	description.text = "A very beautiful decorative knife. It has decorations on its handle. "

func _on_mirror_pressed() -> void:
	description.text = "Fredrick’s favorite mirror. Green loves it being perfectly clean. "

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scene_3.tscn")

func _on_next_pressed() -> void:
	get_tree().change_scene_to_file("res://scene_4.tscn")

func _on_red_mask_pressed() -> void:
	get_tree().change_scene_to_file("res://red_scene_1.tscn")
	
func _on_yelllow_mask_pressed() -> void:
	get_tree().change_scene_to_file("res://yellow_scene_1.tscn")
