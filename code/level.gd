extends Node2D
onready var stat = get_node("/root/Global")
onready var timer = get_node("Control")



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$image.visible = true
	Global.correct = []
	pass # Replace with function body.


func won():
	if Global.win == true:
		Global.level += 1
		Global.list = []
		Global.new_place = []
		Global.hold = []
		Global.random()
# warning-ignore:return_value_discarded
		get_tree().reload_current_scene()
		
		Global.win = false
		
		
	return 

func _process(_delta: float) -> void:
	
	if  timer.time == 0:
		$image.visible = false
	
	
	if Global.win == false:
		pass
	else:
		won()
		print("Curren level: ",Global.level)
	pass
	if Global.highscore < 0:
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://scences/Game_over.tscn")


func _on_Circle_touched() -> void:
	Global.correct.append(get_child(2).Q)

	Global.sound_need()
	pass # Replace with function body.


func _on_Square_touched() -> void:
	Global.correct.append(get_child(3).Q)
	
	Global.sound_need()
	pass # Replace with function body.


func _on_Diamond_touched() -> void:
	Global.correct.append(get_child(4).Q)

	Global.sound_need()
	pass # Replace with function body.


func _on_Triangle_touched() -> void:
	Global.correct.append(get_child(5).Q)
	
	Global.sound_need()
	pass # Replace with function body.


func _on_TouchScreenButton_pressed() -> void:
	# restart
	Global.sound_need()
# warning-ignore:return_value_discarded
	get_tree().reload_current_scene()

func get_highscore():
	if Global.highscore > Global.High:
		Global.High = Global.highscore
	else:
		pass
	if Global.highscore > Global.current_high:
		Global.current_high = Global.highscore
	else: pass

func _on_restart_pressed() -> void:
	Global.sound_need()
	get_highscore()	
	Global.highscore -= (3 * Global.level)
# warning-ignore:return_value_discarded
	get_tree().reload_current_scene()
	pass # Replace with function body.


func _on_stop_pressed() -> void:
	Global.sound_need()
	get_highscore()
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://scences/Home.tscn")
	pass # Replace with function body.
