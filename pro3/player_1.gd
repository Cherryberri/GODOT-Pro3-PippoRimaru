extends Sprite2D

# Movement speed in pixels per second
var speed: float = 200.0

func _process(delta):
	var velocity = Vector2.ZERO

	# Movement input
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1

	# Normalize to prevent faster diagonal movement
	velocity = velocity.normalized()

	# Move the sprite
	position += velocity * speed * delta
