extends Node2D

@onready var description = $DescriptionBox/Description

func _on_carpet_pressed() -> void:
	description.text = "A fancy carpet. Fredrick needs to do a better job of keeping the place clean, leaving a stain like that. "

func _on_chair_pressed() -> void:
	description.text = "An empty chair. Fredrick’s cat that was sleeping here just randomly made a fuss and ran away. "

func _on_clock_pressed() -> void:
	description.text = "Fredrick’s prized grandfather clock. Refuses to let anyone touch it. Wonder if Fredrick would even notice if it changed one day. "

func _on_glass_pressed() -> void:
	description.text = "An empty wine glass. Odd that this was just randomly left here. If there was something in it, there’s no sign of it. "

func _on_knife_pressed() -> void:
	description.text = "A decorative knife. Fredrick loves showing these things off to us."

func _on_mirror_pressed() -> void:
	description.text = "I could never get close to a mirror that dirty. Disgusted with Fredrick. "

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scene_3.tscn")

func _on_next_pressed() -> void:
	get_tree().change_scene_to_file("res://scene_4.tscn")

func _on_yelllow_mask_pressed() -> void:
	get_tree().change_scene_to_file("res://yellow_scene_1.tscn")

func _on_blue_mask_pressed() -> void:
	get_tree().change_scene_to_file("res://blue_scene_1.tscn")
