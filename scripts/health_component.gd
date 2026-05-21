class_name HealthComponent extends Node

@onready var player: CharacterBody2D = $".."

func damage() -> void:
	player.heatlh -= 1
	check_health()

func check_health() -> void:
	if player.health == 0:
		player.global_position = player.respawn_point
		
