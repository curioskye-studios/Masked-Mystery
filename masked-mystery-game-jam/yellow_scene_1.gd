extends Node2D

@onready var description = $DescriptionBox/Description

func _on_carpet_pressed() -> void:
	description.text = "A fancy carpet. Looks like a tripping hazard. "

func _on_chair_pressed() -> void:
	description.text = "Fredrick's cat. Jumpy little thing. "

func _on_clock_pressed() -> void:
	description.text = "Fredrick's creepy grandfather clock. Told them to get it fixed. It's 2 hours off now. "

func _on_glass_pressed() -> void:
	description.text = "A partially drank glass of wine. Fredrick had some earlier. Drink way too much to be safe. "

func _on_knife_pressed() -> void:
	description.text = "A lovely decorative knife. It's a strange thing to include for a party like this. Just asking for an accident of some kind."

func _on_mirror_pressed() -> void:
	description.text = "A fancy mirror. I shouldn't have touched it with food in my hands. Cleaning didn't work. "

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scene_3.tscn")

func _on_next_pressed() -> void:
	get_tree().change_scene_to_file("res://scene_4.tscn")

func _on_red_mask_pressed() -> void:
	get_tree().change_scene_to_file("res://red_scene_1.tscn")

func _on_blue_mask_pressed() -> void:
	get_tree().change_scene_to_file("res://blue_scene_1.tscn")
