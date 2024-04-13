extends CharacterBody3D

var camera : Camera3D
var head : Node3D

var moveSpeed : float = 5.0
var jump_force : float = 5.0
var gravity : float = 9.0

var look_sens : float = 0.5
var min_x_rot : float = -85.0
var max_x_rot : float = 85.0
var mouse_dir : Vector2

func _ready():
	camera = get_node("Camera3D")
	head = get_node("Head")
	remove_child(camera)
	get_node("/root/Main").add_child.call_deferred(camera)
	
func _input(event):
	pass
	
func _process(delta):
	camera.position = head.position
	pass

func _physics_process(delta):
	pass
