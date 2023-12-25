extends Sprite2D

func _process(delta):
	
	if (global_position.x < -300) :
		#print("Galactus Sprite removed at X position: " , global_position.x)
		queue_free()

