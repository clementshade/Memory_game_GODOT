extends Node2D

var T = 1
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Tim.start(1)

	
	pass # Replace with function body.



func _process(delta: float) -> void:
	get_child(T).play()
		
	if T == 3:
		$Tim.stop()


func _on_Timer_timeout() -> void:
	T += 1
	pass # Replace with function body.


func _on_Exit_pressed() -> void:
	Global.sound_need()
	get_tree().change_scene("res://scences/Home.tscn")
	pass # Replace with function body.
