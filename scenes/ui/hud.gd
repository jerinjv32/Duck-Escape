extends Control

@onready var game_manger: Node = %GameManger
@onready var coins: Label = %Coins
@onready var time: Label = %Time
@onready var timer: Timer = $Timer

func _process(delta: float) -> void:
	coins.text = str(game_manger.coins)
	time.text = str(int(timer.time_left))
