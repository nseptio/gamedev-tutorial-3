extends Area2D

@export var player_spawn_position = Vector2(100, 520)

func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.name == "Player":
		reset_player(body)

func reset_player(player):
	player.global_position = player_spawn_position
	player.velocity = Vector2.ZERO
	player.jump_count = 0
