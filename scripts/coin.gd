extends Area2D

@onready var game_manger: Node = %GameManger

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		self.queue_free()
		game_manger.collect_coins()
