extends Node2D

func _ready() -> void:
	self.visible = true
	
	if Global.level <= 10:
		print("easy mode")
		for i in get_children():
			i.set_frame(0)
	elif Global.level > 10 and Global.level < 20:
		for i in get_children():
			i.set_frame(0)
		print ("Normal mode")
	else:
		for i in get_children():
			i.set_frame(1)
		print("Hard mode")
		
		
	pass



func _on_Timer_timeout() -> void:
	self.visible = false

	print("game over")
	pass # Replace with function body.
