extends Node

@onready var player: CharacterBody2D = $"../../Player"

func respawn() -> void:
	player.health = 10
	player.global_position = player.respawn_point
