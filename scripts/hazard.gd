extends Area2D

@export var player: CharacterBody2D
var effect_fequency: int = 0
@onready var timer: Timer = $Timer

func damage_overtime() -> void:
	if effect_fequency >= 0:
		timer.start()
		effect_fequency -= 1
	else:
		timer.stop()
		

func _on_body_entered(body: Node2D) -> void:
	effect_fequency += 3
	damage_overtime()

func damage() -> void:
	print('damage')
	damage_overtime()

func _on_timer_timeout() -> void:
	damage()
