extends Area2D

var dragging = false

func _ready():
	pass

func _process(delta):
	if(dragging):
		print("hey")
		set_position(get_viewport().get_mouse_position())
	pass

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		print(dragging)
		if event.is_pressed():
			dragging = true
		else: 
			dragging = false
	pass
