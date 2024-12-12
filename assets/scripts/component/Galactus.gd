extends Sprite2D
@export var xPos = -1000
@export var isWeapon = false
func _process(_delta):
	
  if (global_position.x < xPos && !isWeapon) :
#print("Galactus Sprite removed at X position: " , global_position.x)
   queue_free()
  if (global_position.x > xPos && isWeapon):
   queue_free()		
