extends Node2D

@onready var weapon = $"Paralax Items/ForwardParalax/Galactus Weapon"
@onready var enemy = $Enemies

func _on_area_2d_area_entered(area):
	print("collision" + area.name)
	if area.name == "PlayerArea2D":
		Global.goto_scene("res://Scenes/Loose.tscn")
	if area.name == "EnemyArea2D":
		enemy.queue_free()
	weapon.queue_free()
