extends Area2D

@export var player: CharacterBody2D
var effect_fequency: int = 0
var effect_is_present: bool = false
@onready var timer: Timer = $Timer

func damage_overtime() -> void:
	if effect_fequency >= 0:
		timer.start()
		effect_fequency -= 1
	else:
		effect_is_present = false
		timer.stop()
		

func _on_body_entered(body: Node2D) -> void:
	if !body.is_dot_present:
		body.is_dot_present = true
		effect_fequency += 3 
		damage_overtime()
	else:
		return


func damage() -> void:
	if player.health > 0:
		player.health -= 1
	else:
		effect_fequency = 0
		player.is_dot_present = false
		player.global_position = player.respawn_point

	damage_overtime()

func _on_timer_timeout() -> void:
	damage()
