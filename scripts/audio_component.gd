class_name AudioComponent
extends Node
@onready var jump_sfx: AudioStreamPlayer2D = %JumpSfx

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("jump"):
		jump_sfx.play()
