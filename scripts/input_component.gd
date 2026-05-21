class_name InputComponent extends Node

var direction: float
var is_jumped:= false

func get_input() -> void:
	direction = Input.get_axis("move_left", "move_right")
	if Input.is_action_just_pressed("jump"):
		is_jumped = true
	else:
		is_jumped = false
		
