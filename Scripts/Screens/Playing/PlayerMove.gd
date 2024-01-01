extends CharacterBody2D
@export var speed = 400
var paused = false

@onready var playerSprite = $PlayerArea2D/Silversurfer
@onready var Pause = $"../Pause"

func get_input():
	var input_direction = Input.get_vector("Left","Right","Up", "Down")
	#check if we need to pause	
	if Input.is_action_just_pressed("Pause"):
		PauseMenu()
	
	AnimatePlayer()	
	velocity = input_direction * speed
	
func _physics_process(delta):
	get_input()
	move_and_slide()

func PauseMenu():
	if paused:
		Pause.hide()
		Engine.time_scale = 1
	else:
		Pause.show()
		Engine.time_scale = 0
		
	paused = !paused

func AnimatePlayer():
	playerSprite.frame = 0 #default
	if Input.is_action_pressed("FireBasicWeapon"):
		playerSprite.frame = 1
	if Input.is_action_pressed("Down"):
		playerSprite.frame = 3
	if Input.is_action_pressed("Up"):
		playerSprite.frame = 4
	if Input.is_action_pressed("FireSuperWeapon"):
		playerSprite.frame = 5
