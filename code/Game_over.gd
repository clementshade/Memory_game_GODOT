extends Node




func _ready() -> void:
	
	$high_score_end.set_text(str("HIGHSCORE: ",Global.High))
	$score_end.set_text(str("SCORE: ",Global.current_high))




func _on_Game_over_pressed() -> void:
	Global.sound_need()
	get_tree().change_scene("res://scences/Home.tscn")

