class_name RespawnComponent extends Node

@onready var player: CharacterBody2D = $".."
var respawn_point: Vector2 = Vector2(64, 39)

func respawn() -> void:
	player.global_position = respawn_point
	player.is_dot_present = false
