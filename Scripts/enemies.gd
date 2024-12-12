extends Node2D
@export var enemy_spawn_delay = 5.0;

# Import the Bullet scene
const BulletScene = preload("res://Scenes/enemies.tscn")

func _process(_delta: float):
	if (PlayerVariables.curr_spawned_enemies <= PlayerVariables.max_eneies):		
		PlayerVariables.curr_spawned_enemies += 1;
		
		var e = BulletScene.instantiate();
		
		e.position = Vector2(position.x, 150);
		
		add_child(e);
		
		

#player collide with enemy
func _on_enemy_area_2d_body_entered(body: Node2D) -> void:
	queue_free()	
	
	HudValues.setHUDEnemiesRemain(-1)
	HudValues.setHUDScore(-10)
	HudValues.setHUDMultiplier(1)
	
	PlayerVariables.setPlayerHPMP(-35, 0)
