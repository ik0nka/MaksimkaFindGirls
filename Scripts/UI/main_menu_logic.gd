extends Control

func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/level_0.tscn")
	
func _on_settings_pressed():
	# print("Pressed")
	pass
	
func _on_exit_pressed():
	get_tree().quit()