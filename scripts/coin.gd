extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var game_manger: Node = %GameManger

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		animation_player.play("coin_collected")
		game_manger.collect_coins()
