extends Node2D

@onready var label = $ExpositionBox/RichTextLabel
@onready var start_button = $Start
@onready var back_button = $Back
@onready var next_button = $Next
@onready var skip_button = $Skip

var count = 1

func _ready() -> void:
	start_button.visible = false

func _physics_process(delta: float) -> void:
	if count != 1 || count != 8:
		back_button.visible = true
		next_button.visible = true
	
	if count == 1:
		back_button.visible = false
		
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
		label.text = "You have 3 masks belonging to each of the suspects. Explore the crime scene from each of their perspectives by putting on each mask."
	
	elif count == 8:
		next_button.visible = false
		
		label.text = "Use these perspectives to solve the mystery in time before the culprit escapes!"
		
		start_button.visible = true
		skip_button.visible = false


func _on_back_pressed() -> void:
	count -= 1
	if count < 1:
		count = 1

func _on_next_pressed() -> void:
	count += 1
	if count > 8:
		count = 8


func _on_start_pressed() -> void:
	start_game()

func _on_skip_pressed() -> void:
	start_game()
	
func start_game():
	GlobalTimer.start_running()	
	get_tree().change_scene_to_file("res://Autopsy Screen/autopsy.tscn")
	
