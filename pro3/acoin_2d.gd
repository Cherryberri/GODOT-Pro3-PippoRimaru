extends Area2D

signal coin_collected

func _on_body_entered(body):
	if body.name.contains("Ball"):
		emit_signal("coin_collected")
		queue_free()  # Remove coin
