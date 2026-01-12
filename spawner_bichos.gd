extends Node2D


@onready var main = get_node("..")
@onready var timer: Timer = $Timer
var bicho_scene := preload("res://PERSONAJE/Bichoqcae.tscn")

func _ready() -> void:
	timer.start()

func _on_timer_timeout() -> void:
	var bicho = bicho_scene.instantiate()
	bicho.position = position
	main.add_child(bicho)
