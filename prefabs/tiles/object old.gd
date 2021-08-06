extends RigidBody2D

signal clicked

var held = false

func _input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			emit_signal("clicked", self)

func _physics_process(_delta):
	if held:
		global_transform.origin = get_global_mouse_position()

func pickup():
	if held:
		return
	mode = RigidBody2D.MODE_STATIC
	held = true

func drop(impulse=Vector2.ZERO):
	if held:
		mode = RigidBody2D.MODE_RIGID
		apply_central_impulse(impulse)
		held = false
