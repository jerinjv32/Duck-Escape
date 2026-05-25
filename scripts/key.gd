extends Area2D

signal key_is_collected

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group('Player'):
		key_is_collected.emit()
		self.queue_free()
