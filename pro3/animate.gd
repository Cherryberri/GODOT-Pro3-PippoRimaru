extends AnimatedSprite2D

func _ready():
	var tween = create_tween()
	tween.tween_property($Sprite2D2, "position", Vector2(500, 200), 2.0) \
		.set_trans(Tween.TRANS_SINE) \
		.set_ease(Tween.EASE_IN_OUT)
