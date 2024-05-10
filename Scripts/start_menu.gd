extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer / new_game_button.grab_focus()


func _on_new_game_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/game.tscn")
	print("new game")


func _on_settings_button_pressed():
	pass # Replace with function body.


func _on_exit_button_pressed():
	pass # Replace with function body.
