extends Area2D

signal key_is_collected
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group('Player'):
		animation_player.play("key_animation")
		key_is_collected.emit()
