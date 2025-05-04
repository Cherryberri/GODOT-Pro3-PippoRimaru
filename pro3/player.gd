extends AnimatedSprite2D

@export var speed: float = 100
var health: int = 100 

@onready var health_bar = $HealthBar 
@onready var sound_up = $SoundUp
@onready var sound_down = $SoundDown 
@onready var sound_left = $SoundLeft 
@onready var sound_right = $SoundRight 

func _process(delta):
	var direction = Vector2.ZERO 

	if Input.is_action_pressed("up"):
		position.y -= speed * delta
		if not sound_up.playing:
			sound_up.play()

	if Input.is_action_pressed("down"):
		position.y += speed * delta
		if not sound_down.playing:
			sound_down.play()

	if Input.is_action_pressed("left"):
		position.x -= speed * delta
		if not sound_left.playing:
			sound_left.play()

	if Input.is_action_pressed("right"):
		position.x += speed * delta
		if not sound_right.playing:
			sound_right.play()

func take_damage(amount):
	health -= amount
	health = max(health, 0)
	print("Player took", amount, "damage! Health left:", health)

	if health_bar:
		health_bar.value = health 

	if health <= 0:
		die()

func die():
	print("Player has died!")
	queue_free() 
