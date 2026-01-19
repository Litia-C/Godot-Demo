extends Label


func _process(delta: float) -> void:
	self.text = str (Global.score)
func _ready() -> void:
	$"../BASKET".connect("score", waos)
	
func waos() -> void:
	Global.score += 1	
