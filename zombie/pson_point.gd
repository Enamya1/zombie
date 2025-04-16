extends Node3D

@onready var timer: Timer = $Timer
@onready var target_parent = get_node("../")
const zombie_scene = preload("res://scene/zombie.tscn")

var zombie_count: int = 0  # Track how many zombies exist

func _ready() -> void:
	timer.autostart = true

func _on_timer_timeout() -> void:
	print("Spawning zombie...")
	var zombie_instance = zombie_scene.instantiate()
	target_parent.add_child(zombie_instance)
	
	zombie_count += 1  # Increment counter

func check_the_load_spown(num) -> void :
	print("Total zombies spawned: ", zombie_count)
	if num==2 :
		timer.paused
	pass
	
#check_the_load_spown(zombie_count)
