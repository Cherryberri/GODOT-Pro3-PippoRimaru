extends Node2D  # or your main node type

var score = 0
@onready var score_label = $CanvasLayer/ScoreLabel

func _ready():
	for coin in get_tree().get_nodes_in_group("coins"):
		coin.connect("coin_collected", Callable(self, "_on_coin_collected"))

func _on_coin_collected():
	score += 2
	score_label.text = "Score: %d" % score
