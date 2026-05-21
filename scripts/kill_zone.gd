extends Area2D

@onready var timer: Timer = $Timer
@export var player: CharacterBody2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		timer.start()

func _on_timer_timeout() -> void:
	player.global_position = player.respawn_point
