extends Sprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if (global_position.x > 2000) :
		#print("Galactus Sprite removed at X position: " , global_position.x)
		queue_free()

