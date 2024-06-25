extends Area2D
var travelleddistance=0
func _physics_process(delta):
	const Speed=1000
	const Range =1200
	
	
	var direction = Vector2.RIGHT.rotated(rotation)
	position+=delta*direction*Speed
	travelleddistance += delta*Speed
	if travelleddistance > Range:
		queue_free()


func _on_body_entered(body):
	queue_free()
	if body.has_method("take_damage"):
		body.take_damage()
	
