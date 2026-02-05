extends Node2D

@onready var label = $ExpositionBox/RichTextLabel
@onready var button = $Start
var count = 1

func _ready() -> void:
	button.visible = false

func _physics_process(delta: float) -> void:
	if count == 1:
		label.text = "You’re a detective working at your own agency."
	elif count == 2:
		label.text = "You’ve recently gotten a strange case at your doorstep. "
	elif count == 3:
		label.text = "A masquerade party has ended in tragedy. "
	elif count == 4:
		label.text = "The victim hosted the party and was viciously murdered at the scene."
	elif count == 5:
		label.text = "You have 3 suspects, each of which has provided their statements on where they were around the time of the murder. "
	elif count == 6:
		label.text = "You know where the murder likely took place. It’s up to you to solve the mystery."
	elif count == 7:
		label.text = "You have 3 masks belonging to each of the suspects, where putting on each offers a different perspective of the crime scene. "
	elif count == 8:
		label.text = "Use these perspectives to solve the mystery in time before the culprit escapes!"
		button.visible = true


func _on_back_pressed() -> void:
	count -= 1
	if count < 1:
		count = 1

func _on_next_pressed() -> void:
	count += 1
	if count > 8:
		count = 8


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scene_2.tscn")
