extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	updateScoreValue()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	updateScoreValue()
	
func updateScoreValue():
	$scoreValue.text = str(HudValues.score)
