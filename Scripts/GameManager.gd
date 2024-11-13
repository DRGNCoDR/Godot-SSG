extends Node
#@onready var gm = $GameManager

func ChangeSceneTo(fileName):
	Global.goto_scene("res://Scenes/" + fileName)	

func QuitGame():
	get_tree().quit()	
	
func _on_video_stream_player_finished() -> void:
	$VideoStreamPlayer.visible = false
	
func _on_continue_pressed() -> void:
	get_tree().paused = false	
	$".".hide()
	#gm.ChangeSceneTo("Playing.tscn")
	#Engine.time_scale = 1
func _process(_delta: float) -> void:
	if PlayerVariables.playerHP <= 0:
		ChangeSceneTo("Loose.tscn")
	
