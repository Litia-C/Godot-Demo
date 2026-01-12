extends Node2D

var bicho_codigo = preload("res://PERSONAJE/Bichoqcae.tscn")
@onready var timer: Timer = $Timer
func _ready() -> void:
	timer.start()	
