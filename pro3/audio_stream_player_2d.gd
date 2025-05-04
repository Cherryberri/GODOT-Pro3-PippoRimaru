extends Node2D



@onready var shoot: AudioStreamPlayer2D = $Play_sound

func _ready() -> void:
	if shoot:
		shoot.stream = load("res://UltimateGodotIntro2D-main/resources/audio/explosion.wav")
		 
		shoot.play() 
