extends AnimatedSprite2D
@onready var sound_up = $Chrip
const RUN_SPEED = 30 
func _process(delta):
	position += Vector2.RIGHT * RUN_SPEED * delta

 
