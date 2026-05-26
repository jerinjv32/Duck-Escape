extends Area2D

@onready var marker_2d: Marker2D = $Marker2D
@export var player: CharacterBody2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		animation_player.play('check_point_set')
		player.respawn_point = marker_2d.global_position
		collision_shape_2d.set_deferred("disabled", true)
