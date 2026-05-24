extends Control

@onready var game_manger: Node = %GameManger
@onready var coins: Label = %Coins
@onready var time: Label = %Time
@onready var global_timer: Timer = %GlobalTimer

func _process(delta: float) -> void:
	coins.text = str(game_manger.coins)
	time.text = str(int(global_timer.time_left))
