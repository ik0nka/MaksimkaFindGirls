extends Node


func _ready():
	pass # Replace with function body.


func _input(event):
	if event.is_action_pressed("ESC"):
		# Добавить сцену с настройками
		get_tree().change_scene_to_file("res://Scenes/UI/main_menu.tscn")