extends Node
onready var stat = get_node("/root/Global")

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	stat.connect("sound",self,"_play")
	pass # Replace with function body.


func _process(delta: float) -> void:
	
	pass

 # Replace with function body.

func _play():
	$Click_sound.play()
	
func _on_Click_sound_finished() -> void:
	$Click_sound.stop()
	pass # Replace with function body.
