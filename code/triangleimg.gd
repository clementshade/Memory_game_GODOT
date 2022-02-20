extends AnimatedSprite

onready var pos: int = Global.list[0]
onready var P = Global.new_place[pos]



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.position = Vector2(P,250)
	#print(P,"triangle is ",pos)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
