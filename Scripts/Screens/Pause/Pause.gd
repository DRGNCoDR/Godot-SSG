extends Node
#Player move script is on the player object in playing scene
@onready var main = $"../Player"

func _on_continue_pressed():
	main.PauseMenu()

func _on_quit_pressed():
	get_tree().quit()
