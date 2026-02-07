extends Node2D

@onready var label = $Label

func time_left_to_solve():
	var time_left = GlobalTimer.time_left
	var minute = floor(time_left / 60)
	var second = int(time_left) % 60
	return [minute, second]

func _process(_delta):
	label.text = "%02d : %02d" % time_left_to_solve()
