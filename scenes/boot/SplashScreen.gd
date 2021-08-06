extends Node2D

func _ready():
	print("Game Starting...")
	
	yield(get_tree().create_timer(1), "timeout")
	$AnimationPlayer.play("fade")
	
	yield(get_tree().create_timer(2.5), "timeout")
	$AnimationPlayer.play_backwards("fade")
	
	yield(get_tree().create_timer(1.2), "timeout")
	get_tree().change_scene("res://scenes/menus/MainMenu.tscn")

	pass
