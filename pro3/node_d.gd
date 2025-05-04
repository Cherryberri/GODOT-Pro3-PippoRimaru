extends Node

@onready var tween = $Tween
@onready var button = $Button  # Change to $TextureRect if using image

func _ready():
	button.connect("mouse_entered", _on_mouse_entered)
	button.connect("mouse_exited", _on_mouse_exited)

func _on_mouse_entered():
	tween.kill_all()  # Cancel any ongoing tweens
	tween.tween_property(button, "scale", Vector2(1.2, 1.2), 0.2) \
		.set_trans(Tween.TRANS_SINE) \
		.set_ease(Tween.EASE_OUT)

func _on_mouse_exited():
	tween.kill_all()
	tween.tween_property(button, "scale", Vector2(1, 1), 0.2) \
		.set_trans(Tween.TRANS_SINE) \
		.set_ease(Tween.EASE_IN)


func _on_button_mouse_exited() -> void:
	pass # Replace with function body.
