extends Node 

@onready var timer: Timer = $Timer
var player: CharacterBody2D 

func respawn(body: CharacterBody2D) -> void:
	player = body
	player.is_dead = true
	timer.start()

func _on_timer_timeout() -> void:
	player.health = 10
	player.is_dead = false
	player.global_position = player.respawn_point
