extends Node2D

@onready var current_scene = get_tree().current_scene.scene_file_path
@onready var back_button = $Back
@onready var next_button = $Next

var screen_scenes_dict = { 
		1: "res://Autopsy Screen/autopsy.tscn", 
		2: "res://Interrogation Screen/interrogation.tscn", 
		3: "res://Investigation Screen/Scenes/investigation.tscn",
		4: "res://Deduction Screen/deduction.tscn",
	}
	
var screen_scenes_tracker = 1
var screen_scenes_dict_max = screen_scenes_dict.size()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	current_scene = get_tree().current_scene.scene_file_path
	screen_scenes_tracker = screen_scenes_dict.find_key(current_scene)
	
	match screen_scenes_tracker:
		1:
			back_button.visible = false
		screen_scenes_dict_max:
			next_button.visible = false
		_:
			back_button.visible = true
			next_button.visible = true

func switch_scenes():
	get_tree().change_scene_to_file(screen_scenes_dict[screen_scenes_tracker])

func _on_back_pressed() -> void:
	
	if screen_scenes_tracker > 1:
		screen_scenes_tracker -= 1
		
		switch_scenes()

func _on_next_pressed() -> void:
	
	if screen_scenes_tracker  <= screen_scenes_dict_max-1:
		screen_scenes_tracker += 1
		
		switch_scenes()
