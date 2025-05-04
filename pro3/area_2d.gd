extends Area2D

signal player_damaged(amount) 

@export var player: AnimatedSprite2D
@onready var sound_up = $Bg 

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered")) 
	connect("area_entered", Callable(self, "_on_area_entered"))
	
	if sound_up: 
		sound_up.stream = load("res://Sunny Land Collection Files/SunnyLand Music/SunnyLand Music/adventure pack 2 ogg/up_and_right.ogg") 
	
		sound_up.play()

func _on_body_entered(body):
	if body.name == "Player":
		print("Player entered the hazard!")
		emit_signal("player_damaged", 10)
		if body.has_method("take_damage"):  
			body.take_damage(10)

func _on_area_entered(area):
	if area.is_in_group("hazards"):
		print("Player collided with a hazardous area!")
		if player:
			player.take_damage(10)

func _on_body_exited(body):
	if body.name == "Player":
		print("Player exited the hazard area!")
