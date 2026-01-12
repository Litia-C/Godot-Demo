extends Node2D


@onready var main = get_node("..")
@onready var timer: Timer = $Timer
var bicho_scene = preload("res://PERSONAJE/Bichoqcae.tscn")
var puntos_spawn = []
func _ready() -> void:
	for i in get_children():
		if i is Marker2D:
			puntos_spawn.append(i)
	timer.start()

func _on_timer_timeout() -> void:
	#Puntos de spawn aleatorios
	var punto = puntos_spawn[randi() % puntos_spawn.size()]
	
	
	var bicho = bicho_scene.instantiate()
	bicho.position = punto.position
	main.add_child(bicho)
