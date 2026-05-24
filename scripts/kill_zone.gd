extends Area2D

@export var player: CharacterBody2D
@onready var respawn_component: Node = %RespawnComponent


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		respawn_component.respawn(player)
