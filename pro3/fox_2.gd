extends AnimatedSprite2D

@export var speed: float = 30.0

@onready var animated_sprite = $AnimatedSprite2D

func _process(delta: float) -> void:
	var direction = 0  
	
	if Input.is_action_pressed("lefty"):
		position.x -= speed * delta
	

	if Input.is_action_pressed("righty"):
		position.x += speed * delta
		
	 
