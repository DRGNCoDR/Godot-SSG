extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	updateScoreValue()
	updateEnemiesRemain()
	updateMultiplierValue()
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	updateScoreValue()
	updateEnemiesRemain()
	updateMultiplierValue()
	updatePlayerHP()
	
func updateScoreValue():
	$score.text = str(HudValues.score)
func updateEnemiesRemain():
	$enemiesRemain.text = str(HudValues.enemiesRemain)
func updateMultiplierValue():
	$multiplier.text = str(HudValues.multiplier)
	
func updatePlayerHP():
	$HP_Bar.scale.x = PlayerVariables.playerHPBarLength
