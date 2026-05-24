extends Area2D

@export var player: CharacterBody2D
var effect_fequency: int = 3
@onready var timer: Timer = $Timer
@onready var respawn_component: Node = %RespawnComponent

func damage_overtime() -> void:
	if effect_fequency >= 0 and effect_fequency <= 3:
		timer.start()
		effect_fequency -= 1
	else:
		timer.stop()
		

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group('Player'):
		effect_fequency = 3
		damage_overtime()


func damage() -> void:
	if player.health > 0:
		player.health -= 1
	elif player.health == 0:
		respawn_component.respawn(player)

	damage_overtime()

func _on_timer_timeout() -> void:
	damage()
