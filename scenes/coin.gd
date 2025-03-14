extends Area2D

@onready var anim = $CoinAnimated
@onready var sound = $AudioStreamPlayer2D

func _ready():
	connect("body_entered", _on_body_entered)

func _on_body_entered(body):
	if body.get_name() == "Player":
		sound.play()
		anim.visible = false 
		await sound.finished
		queue_free()
