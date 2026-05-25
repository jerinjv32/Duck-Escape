extends Node

@onready var global_timer: Timer = %GlobalTimer
var key_is_collected: bool = false

var coins: int = 0

func collect_coins() -> void:
	coins += 1


func _on_global_timer_timeout() -> void:
	get_tree().change_scene_to_file('uid://bi70wo6tu0hua')


func _on_key_key_is_collected() -> void:
	key_is_collected = true
