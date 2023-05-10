extends CharacterBody2D

@export var move_speed : float = 100
var acceleration : float

func _ready():
	acceleration = move_speed

func _physics_process(delta):
	move_player()

func move_player():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * acceleration
	
	move_and_slide()
