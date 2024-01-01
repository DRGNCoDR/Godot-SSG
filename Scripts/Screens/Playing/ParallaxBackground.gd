extends ParallaxBackground

@export var speed = 0
@export var forwardDirection = false

 # Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
 scrollBackground(delta,forwardDirection)

func scrollBackground(delta, useForwardX):
 if(useForwardX):
  scroll_offset.x += speed * delta 
 else:
  scroll_offset.x -= speed * delta
