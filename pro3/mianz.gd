extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	var tween = create_tween()
	tween.tween_property($Sprite2D, "position", Vector2(400, 200), 2.0)
	tween.tween_property($Sprite2D, "rotation_degrees", 360, 2.0)
	tween.tween_property($Sprite2D, "modulate:a", 0.0, 1.5)
	tween.tween_property($Sprite2D, "scale", Vector2(2, 2), 1.0)
