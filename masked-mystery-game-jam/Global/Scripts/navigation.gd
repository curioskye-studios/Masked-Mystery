extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var current_scene = get_tree().current_scene.scene_file_path
	
	match current_scene:
		"res://Autopsy Screen/autopsy.tscn":
			pass
		"res://Interrogation Screen/interrogation.tscn":
			pass
		_:
			pass
