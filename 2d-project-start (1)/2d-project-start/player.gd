extends CharacterBody2D
signal health_depleated

var healthh=100.0

func _physics_process(delta):
	var direction=Input.get_vector("move_left","move_right","move_up","move_down")
	velocity=direction*600
	move_and_slide()
	
	if velocity.length()> 0.0:
		get_node("HappyBoo").play_walk_animation()
	else:
		get_node("HappyBoo").play_idle_animation()

	const damagerate=5.0
	var overlapping_mobs=%hurtbox.get_overlapping_bodies()
	if overlapping_mobs.size() >=0:
		healthh -= damagerate*delta*overlapping_mobs.size()
		%ProgressBar.value=healthh
		if healthh<=0:
			health_depleated.emit()
