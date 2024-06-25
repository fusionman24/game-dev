extends Area2D

func _physics_process(delta):
	var enimiesinrange=get_overlapping_bodies()
	if enimiesinrange.size()>0:
		var targetenimies=enimiesinrange.front()
		look_at(targetenimies.global_position)
		
func shoot():
	const BULLET = preload("res://bullet.tscn")
	var newbullet = BULLET.instantiate()
	newbullet.global_position =  %shootpoint.global_position
	newbullet.global_rotation =  %shootpoint.global_rotation
	%shootpoint.add_child(newbullet)


func _on_timer_timeout():
	shoot()
