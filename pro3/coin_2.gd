extends Node2D

var score = 0

func _ready():
	for coin in get_tree().get_nodes_in_group("coins"):
		coin.connect("coin_collected", Callable(self, "_on_coin_collected"))

func _on_coin_collected():
	score += 2
	print("Score:", score)
