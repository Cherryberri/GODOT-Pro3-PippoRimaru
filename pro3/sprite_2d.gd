extends Sprite2D  # or KinematicBody2D / RigidBody2D depending on your node type

# Speed at which the object falls
var fall_speed = 30  # pixels per second
var reset_position_y = 280  # reset to this Y when it falls off screen
var screen_bottom = 649  # change this depending on your screen size
var screen_width = 649 # adjust to your screen size

func _process(delta):
	position.y += fall_speed * delta
	
	# Reset position when object moves off screen
	if position.y > screen_bottom:
		position.y = reset_position_y
		position.x = randf() * screen_width
