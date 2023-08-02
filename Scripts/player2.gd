extends CharacterBody2D

var currPos = [16,-18]

func _input(event):
	if event.is_action_pressed("ui_right"):
		currPos[0] += 32
		
	elif event.is_action_pressed("ui_left"):
		currPos[0] -= 32
		
		
	elif event.is_action_pressed("ui_up"):
		currPos[1] -= 32
		
	elif event.is_action_pressed("ui_down"):
		currPos[1] += 32
		
		
	self.position = Vector2(currPos[0], currPos[1]) 
