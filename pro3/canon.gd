extends Node2D

@export var projectile_scene: PackedScene = preload("res://projectile.tscn")  # Preload the projectile scene
@export var shoot_force: float = 50  # Adjust the shooting power

func _process(delta):
	if Input.is_action_just_pressed("shoot"):
		shoot_projectile()

func shoot_projectile():
	if projectile_scene:
		var projectile = projectile_scene.instantiate() as RigidBody2D
		get_parent().add_child(projectile)
		
		# Set the projectile's position to the Muzzle
		projectile.global_position = $mussle.global_position  
		
		# Calculate the direction the cannon is facing
		var shoot_direction = global_transform.x.normalized()
		
		# Apply impulse to the projectile
		projectile.apply_impulse(Vector2.ZERO, shoot_direction * shoot_force)
