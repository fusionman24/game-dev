extends Node2D

const speed=60
var direc=1
@onready var ray_castright = $RayCastright
@onready var ray_castleft = $RayCastleft
@onready var animated_sprite = $AnimatedSprite2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_castright.is_colliding():
		direc=-1
		animated_sprite.flip_h=true
	if ray_castleft.is_colliding():
		direc=1
		animated_sprite.flip_h=false
	position.x+=direc*speed*delta
