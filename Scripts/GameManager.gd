extends Node
@export  var screenName = ""

func _changeScene():	
	Global.goto_scene("res://Scenes/" + screenName)
	
func _quitGame():
	get_tree().quit()	
