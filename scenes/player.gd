extends CharacterBody2D

const UP = Vector2(0, -1)

@export var speed := 200
@export var jump_speed := -400
@export var max_jump = 2
@export var gravity := 1200

@onready var animplayer = $AnimatedSprite2D
@onready var jump_sound = $AudioStreamPlayer2D

func _get_input():
	if (
		(Input.is_action_just_pressed("ui_accept") or Input.is_action_just_pressed("ui_up"))
		and is_on_floor()
	):
		velocity.y = jump_speed
		jump_sound.play()

	var direction := Input.get_axis("ui_left", "ui_right")
	var animation = "idle"
	if direction:
		animation = "walk_right"
		velocity.x = direction * speed
		animplayer.flip_h = direction < 0
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
	animplayer.play(animation)

	move_and_slide()

func _physics_process(delta: float) -> void:
	velocity.y += delta * gravity
	_get_input()
	move_and_slide()
