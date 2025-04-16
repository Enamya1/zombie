extends CharacterBody3D



@export var gravity = -9.8
@export var SPEED = 5.0
@export var accel =10
@onready var navigation_agent_3d: NavigationAgent3D = $NavigationAgent3D
@onready var player: CharacterBody3D = $"../CharacterBody3D"



func _ready() -> void:
	
	pass 
func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y +=gravity * delta
	look_at(player.position,Vector3i(0,1,0))
	rotate_y(PI)
	var direction
	navigation_agent_3d.target_position=player.position
	direction = (navigation_agent_3d.get_next_path_position()- global_position).normalized()
	velocity= velocity.lerp(direction*SPEED ,accel*delta)
	
	move_and_slide()
	
	
	pass 
