extends Node2D

# Collision script. when the player taps screen

#variables 
onready var click = false 



# signal stands for hierachy. The order in which they were
#clicked
signal touched()


#on start of scene tree
func _ready() -> void:
	$AnimatedSprite.set_frame(0)
	
	pass

# user define function for what happens if something is clicked
func clicked():
	if click == true:
		$AnimatedSprite.set_frame(1)
		
		
	elif click == false:
		pass
	
	return


# called every frame within the period of delta
func _process(_delta: float) -> void:
	clicked()
	pass


# Touch screen code
func _on_TouchScreenButton_pressed() -> void:
	if click == false:
		click = true
		emit_signal("touched")
		
	else:
		pass
	pass  
