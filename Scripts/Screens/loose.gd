extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	updateScoreValue()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	updateScoreValue()
	
func updateScoreValue():
	$Score_value.text = str(HudValues.score)