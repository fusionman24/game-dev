extends Node
var score=0
@onready var score_update = $"score update"

func add_point():
	score+=1
	score_update.text = " you collected "+ str(score) +" coins. "
