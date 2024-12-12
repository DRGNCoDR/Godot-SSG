extends Node
@export var enemiesRemain = 10
@export var multiplier = 1
@export var score = 0

@export var playerHP = 100
		
#func setHUDValues(pscore : int, multi:int, enemiesRemaing:int):
	#enemiesRemain += enemiesRemaing
	#score += pscore
	
func setHUDMultiplier(multi:int):
	multiplier = multi	
	
func setHUDScore(p_score:int):
	score += p_score
	
func setHUDEnemiesRemain(enemiesRemaining:int):
	enemiesRemain += enemiesRemaining
	
func setPlayerHP(newHP:int):
	playerHP = newHP
