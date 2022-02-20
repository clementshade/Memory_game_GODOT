extends Node

export var win = false

var save_path = "user://save.dat"
var save_data = {
		"highscore": "!",
		"text": "hello"
	}
#  filled varibles
var level : int = 0
var highscore: int = 0
var order = [0,1,2,3]
var old_place = [50,150,250,350]
var High = 0
var current_high = 0
signal sound
#Empty variables
var new_place = []
var list = []
var hold = []
var correct = []
var ran = 0
var pla = 0



func load_1():
	
	var loadfile = File.new()
	if loadfile.file_exists(save_path):
		loadfile.open(save_path, File.READ)
		save_data = loadfile.get_var()
		loadfile.close()
	else:
		print("load not found")
	return
		
func save():
	#save	
	var savefile = File.new()
	var error = savefile.open(save_path, File.WRITE)
	if error == OK:
		savefile.store_var(save_data)
		savefile.close()
	else:
		print("save error")
	print("data saved")

func random():
	randomize()
	order.shuffle()
	for i in order:		
		list.append(order[ran])
		hold.append(list[ran])
		ran += 1
	ran = 0
	for h in hold:
		new_place.append(old_place[hold[ran]])
		ran += 1
	
	ran = 0

	return

func _ready() -> void:
	load_1()
	High = int(save_data["highscore"])
	random()
	

func _process(_delta: float) -> void:
	if highscore > High:
		High = highscore
	else:
		pass
	if old_place == correct:
		win = true
		highscore += level
		
	

	pass

func sound_need():
	emit_signal("sound")
	
