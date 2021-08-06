extends Node


func _ready():
	yield(get_tree().create_timer(1), "timeout")
	pass 

func _on_TextureButton_button_up():
	$TextureButton.disabled = true
	print("Load Level1")
	$AnimationPlayer.play_backwards("fade")
	yield(get_tree().create_timer(1.5), "timeout")
	get_tree().change_scene("res://scenes/levels/level1.tscn")
	pass
