extends Node2D


onready var ready = preload("res://code/Global.gd")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$highscore_begin.set_text(str("HIGHSCORE: ",Global.High))
	pass # Replace with function body.





func _on_Play_pressed() -> void:
	Global.sound_need()
	Global.level = 1
	Global.highscore= 0
	get_tree().change_scene("res://scences/test_screen.tscn")
	pass # Replace with function body.


func _on_Exit_pressed() -> void:
	Global.sound_need()
	
	Global.save_data["highscore"] = str(Global.High)
	Global.save()
	
	get_tree().quit()
	pass # Replace with function body.
	
	



func _on_Help_pressed() -> void:
	Global.sound_need()
	get_tree().change_scene("res://scences/Help.tscn")
	Global.save()
	pass # Replace with function body.
