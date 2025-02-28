extends CharacterBody2D

@export var gravity = 500.0
@export var walk_speed = 200
@export var jump_speed = -350
@export var max_jumps = 2

var jump_count = 0
var poses_path = "res://assets/kenney_platformercharacters/PNG/Player/Poses"
var facing_right = true

@onready var sprite = $Sprite2D
func _ready():
	# Set the initial sprite to idle
	sprite.texture = load(poses_path + "/player_idle.png")
	
func _physics_process(delta):
	velocity.y += gravity * delta

	if is_on_floor():
		jump_count = 0

	if Input.is_action_just_pressed("ui_up"):
		if is_on_floor() or jump_count < max_jumps:
			velocity.y = jump_speed
			jump_count += 1
			sprite.texture = load(poses_path + "/player_jump.png")

	# Pergerakan horizontal
	if Input.is_action_pressed("ui_left"):
		velocity.x = -walk_speed
		facing_right = false
		handle_walk_animation()
	elif Input.is_action_pressed("ui_right"):
		velocity.x = walk_speed
		facing_right = true
		handle_walk_animation()
	else:
		velocity.x = 0
		if is_on_floor():
			sprite.texture = load(poses_path + "/player_idle.png")
		
	if !is_on_floor() and velocity.y > 0:
		sprite.texture = load(poses_path + "/player_fall.png")

	sprite.flip_h = !facing_right
	move_and_slide()

func handle_walk_animation():
	if is_on_floor():
		# Alternate between walk1 and walk2 based on time for walking animation
		@warning_ignore("integer_division")
		if int(Time.get_ticks_msec() / 250) % 2 == 0:
			sprite.texture = load(poses_path + "/player_walk1.png")
		else:
			sprite.texture = load(poses_path + "/player_walk2.png")
