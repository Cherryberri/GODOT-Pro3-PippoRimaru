extends RigidBody2D

@export var bounce_force: float = 300.0
@export var move_force: float = 150.0

func _ready():
	# Give initial impulse to get it moving
	apply_impulse(Vector2(move_force, -bounce_force))

func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	# Keep applying a little force to maintain movement
	var velocity = linear_velocity

	# Keep the ball bouncing upward when it touches the ground (y axis)
	if velocity.y > 0:
		apply_impulse(Vector2(0, -bounce_force * 0.05))

	# Keep nudging horizontally to simulate rolling
	if velocity.x < 20:
		apply_impulse(Vector2(move_force * 0.02, 0))
