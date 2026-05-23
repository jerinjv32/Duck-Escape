extends Area2D

@onready var timer: Timer = $Timer
@export var player: CharacterBody2D
@onready var respawn_component: Node = %RespawnComponent


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		timer.start()

func _on_timer_timeout() -> void:
	respawn_component.respawn()
