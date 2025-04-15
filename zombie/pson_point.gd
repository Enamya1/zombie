extends Node3D

@onready var zombie = preload("res://scene/zombie.tscn")




func _on_timer_timeout() -> void:
	
	var enm = zombie.instantiate()
	enm.add_child()
	pass # Replace with function body.
