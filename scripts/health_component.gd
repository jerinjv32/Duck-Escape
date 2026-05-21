class_name HealthComponent extends Node

@onready var player: CharacterBody2D = $".."

func damage() -> void:
	player.heatlh -= 1
