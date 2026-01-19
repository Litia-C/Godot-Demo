extends Area2D

signal score
@onready var audio = $audio



func _on_body_entered(body: Node2D) -> void:
	emit_signal("score")
	print("punto")
	body.queue_free()
	audio.play()


func _on_puntuacion_ready() -> void:
	pass # Replace with function body.
