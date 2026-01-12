extends Area2D

signal score



func _on_body_entered(body: Node2D) -> void:
	emit_signal("score")
	print("punto")
	body.queue_free()
