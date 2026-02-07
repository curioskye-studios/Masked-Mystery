extends Node

var time_left 
var running := false

func start():
	time_left = 600.0 
	running = true

func stop():
	running = false

func reset(time: float):
	time_left = time
	running = false

func _process(delta):
	if running and time_left > 0:
		time_left -= delta
		if time_left <= 0:
			time_left = 0
			running = false
			get_tree().change_scene_to_file("res://Outro Screen/Scenes/outro_lose.tscn")
