extends Node
@export  var screenName = ""

func _changeScene():	
	Global.goto_scene("res://Scenes/" + screenName)
	
func _quitGame():
	get_tree().quit()
	
#func _on_pause_button_pressed():
	#get_tree().paused = true
	#var pausePressed2 = Input.is_action_pressed("Pause")
	#print(pausePressed2)
	#if (pausePressed2):
		#_on_close_button_pressed()
	#
#func _on_close_button_pressed():
	#get_tree().paused = false
