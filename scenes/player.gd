extends CharacterBody2D
@onready var input_component: InputComponent = %InputComponent
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var health: int = 11
const JUMP_VELOCITY: int = -300
const SPEED: int = 200
var respawn_point: Vector2 = Vector2(64, 39)
var is_dead: bool = false

func _physics_process(delta: float) -> void:
	if is_dead:
		animated_sprite_2d.play('Dead')
	else:
		input_component.get_input()
		velocity.x = input_component.direction * SPEED

		if is_on_floor():
			if input_component.direction == 0:
				animated_sprite_2d.play("Idle")
			else:
				animated_sprite_2d.play("Run")
		if input_component.direction > 0:
			animated_sprite_2d.flip_h = false
		elif input_component.direction < 0:
			animated_sprite_2d.flip_h = true

		if not is_on_floor():
			velocity += get_gravity() * delta
		if input_component.is_jumped and is_on_floor():
			animated_sprite_2d.play("Jump")
			velocity.y = JUMP_VELOCITY	

		move_and_slide()
