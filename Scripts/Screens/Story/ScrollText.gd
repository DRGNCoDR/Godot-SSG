extends RichTextLabel

@export var speed=40
@export var visibleChar = 0
@export var totalChar = 0 

# Called when the node enters the scene tree for the first time.
func _ready():
	totalChar = get_total_character_count()
	set_visible_characters(0)
	visibleChar = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#var totalChar = get_percent_visible()
	#if (get_percent_visible() < 100):
		visibleChar += speed * delta 		
		set_visible_characters(visibleChar)
