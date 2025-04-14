extends CharacterBody3D



@export var gravity = -9.8
@export var SPEED = 5.0



func _ready() -> void:
	
	pass 
func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y +=gravity * delta
	move_and_slide()
	
	
	pass 
	
