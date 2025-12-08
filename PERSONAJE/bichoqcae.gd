extends CharacterBody2D

const SPEED = 1.0
var dragging = false
var of = Vector2(0,0)

@onready var timer: Timer = $Timer
# Función Caer
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if dragging:
		$AnimatedSprite2D.play("grabbed")
		position = get_global_mouse_position()
		
	# Gravedad 
	velocity += get_gravity() * (delta*0.099)
	velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_button_button_down() -> void:
	dragging = true
	timer.start()
func _on_timer_timeout() -> void:	
	dragging = false
	$AnimatedSprite2D.play("falling")	

func _on_button_button_up() -> void:
	dragging = false
