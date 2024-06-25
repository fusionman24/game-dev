extends Area2D


# Called when the node enters the scene tree for the first time.
@onready var score = %score
@onready var animation_player = $AnimationPlayer




func _on_body_entered(body):
	score.add_point()
	animation_player.play("pickup")
