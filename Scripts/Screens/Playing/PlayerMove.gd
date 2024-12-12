extends CharacterBody2D
@export var speed = 400
@onready var playerSprite = $PlayerArea2D/Silversurfer

func get_input():
	var input_direction = Input.get_vector("Left","Right","Up", "Down")
	
	AnimatePlayer()	
	
	velocity = input_direction * speed
	
func _physics_process(_delta):
	get_input()
	move_and_slide()

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
