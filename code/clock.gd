extends Control
var time = 0
var highscore = Global.highscore



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	time()
	$Timer.start(1)
	pass # Replace with function body.
func time():
	if Global.level >= 0 and Global.level <= 10:
		time = 10
	elif Global.level > 10 and Global.level <= 25:
		time = 5
	elif Global.level > 25 and Global.level <= 35:
		time = 2
	else:
		time = 1
func cdot():
	$sec.set_text(str(time))
	$Highscore.set_text(str("SCORE: ",highscore))
	
	
	pass

func _process(_delta: float) -> void:
	cdot()
	
		
	pass


func _on_Timer_timeout() -> void:
	
	if time != 0:
		time -= 1
	pass # Replace with function body.
