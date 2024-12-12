extends Node2D

func _ready():
	updateHUDValues()

func _process(_delta: float) -> void:
	updateHUDValues()
	updatePlayerHP()

func updateHUDValues():
	$enemiesRemain.text = str(HudValues.enemiesRemain);
	$score.text = str(HudValues.score);
	$multiplier.text = str("x ", HudValues.multiplier);

func updatePlayerHP():
	$HP_Bar.scale.x = PlayerVariables.playerHPBarLength
	
