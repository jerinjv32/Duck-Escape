class_name AnimationComponent extends Node
@onready var animated_sprite_2d: AnimatedSprite2D = $"../AnimatedSprite2D"

func run_animation() -> void:
	animated_sprite_2d.play("Run")