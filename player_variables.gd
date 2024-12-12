extends Node
@export var playerHP = 100;
var playerMaxHP = 100;
@export var playerHPBarLength = 1.0;
@export var playerMP = 100;
@export var max_eneies = 3;
@export var curr_spawned_enemies = 1;

func setPlayerHPMP(valueHP :int,valueMP :int):
	playerHP += valueHP
	playerMP += playerMP
	
	playerHPBarLength = float(playerHP) / playerMaxHP 
	
	if(playerHP <= 0):
		Global.goto_scene("res://Scenes/Loose.tscn")
	
