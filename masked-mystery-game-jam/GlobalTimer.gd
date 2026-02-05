extends Node

var time_left := 600.0 # 5 minutes (example)
var running := false

func start():
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
			get_tree().change_scene_to_file("res://outro_lose.tscn")
