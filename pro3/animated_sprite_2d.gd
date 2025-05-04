extends AnimatedSprite2D



@onready var bg_music: AudioStreamPlayer2D = $Play_sound

func _ready() -> void:
	if bg_music:
		bg_music.stream = load("res://UltimateGodotIntro2D-main/resources/audio/battleThemeA.mp3")
		 
		bg_music.play() 


func _on_animation_changed() -> void:
	const SPEED = 30.0
const JUMP_VELOCITY = -40.0
