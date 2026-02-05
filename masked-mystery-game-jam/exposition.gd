extends Node2D

@onready var label = $DescriptionBox/Button/Label

var count = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	count += 1
	if count == 1:
		label.text = "You’re a detective working at your own agency."
	elif count == 2:
		label.text = "You’ve recently gotten a strange case at your doorstep. A masquerade party has ended in tragedy. The victim hosted the party and was viciously murdered at the scene."
	elif count == 3:
		label.text = "You have 3 suspects, each of which has provided their statements on where they were around the time of the murder. You know where the murder likely took place. It’s up to you to solve the mystery."
	elif count == 4:
		label.text = "You have 3 masks belonging to each of the suspects, where putting on each offers a different perspective of the crime scene. Use these perspectives to solve the mystery in time before the culprit escapes!"
	elif count == 5:
		get_tree().change_scene_to_file("res://scene_2.tscn")
