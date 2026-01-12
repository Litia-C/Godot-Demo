extends CharacterBody2D


var dragging = false
var of = Vector2(10,10)
const SPEED = 300.0
var initVelocity = velocity
@onready var timer: Timer = $Timer


# Función de Caer
func _physics_process(delta: float) -> void:
	if dragging:
		velocity = initVelocity  
		$AnimatedSprite2D.play("grabbed")
		position = get_global_mouse_position() - of
		
	# Gravedad 
	velocity += (get_gravity() * (delta*0.099))

	move_and_slide()
	
	#RATÓN
func _on_button_button_down() -> void:
	dragging = true
	timer.start()
	

func _on_timer_timeout() -> void:	
	dragging = false
	$AnimatedSprite2D.play("falling")	

func _on_button_button_up() -> void:
	dragging = false
	
