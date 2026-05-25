extends Area2D
@onready var timer: Timer = $Timer
@onready var game_manger: Node = %GameManger

func to_completion_scene() -> void:
	get_tree().change_scene_to_file("uid://cqjyxyrssgmhw")

func _on_timer_timeout() -> void:
	to_completion_scene()


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		if game_manger.key_is_collected:
			timer.start()
