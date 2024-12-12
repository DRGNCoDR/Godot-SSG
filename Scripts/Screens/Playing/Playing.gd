extends Node
@onready var pause = $Pause
func _process(_delta: float) -> void:
	if(Input.is_action_just_pressed("Pause")):
		get_tree().paused = true
		pause.show()
		
