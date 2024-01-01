extends Node

func ChangeSceneTo(fileName):
	Global.goto_scene("res://Scenes/" + fileName)

func QuitGame():
	get_tree().quit()	
