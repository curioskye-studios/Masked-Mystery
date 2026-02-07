extends Node

const max_time := 720.0 # 12 minutes

var time_left: float
var time_is_running := false

func start_running():
	reset_time()
	time_is_running = true

func stop_running():
	time_is_running = false

func reset_time():
	time_left = max_time

func _process(delta):
	if time_is_running and time_left > 0:
		time_left -= delta
		
	if time_left < 0:
		stop_running()
		get_tree().change_scene_to_file("res://Outro Screen/Scenes/outro_lose.tscn")
		reset_time()
