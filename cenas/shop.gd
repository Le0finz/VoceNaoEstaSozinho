extends CanvasLayer

var currItem = 0
var select = 0
var item = preload("res://cenas/icone.tscn")

func _on_button_pressed():
	get_node("AnimationPlayer").play("TransOut")


func switchItem(select):
	for i in range(Global.items.size()):
		if select == i:
			currItem = select
			get_node("Control/icone").texture = Global.items[currItem]["Icon"]
			get_node("Control/Name").text = Global.items[currItem]["Name"]
			get_node("Control/Des").text = Global.items[currItem]["Des"]
			get_node("Control/Buy").text += "\nCost: " + str(Global.items[currItem]["Cost"])

func _on_next_pressed():
	switchItem(currItem+1)


func _on_prev_pressed():
	switchItem(currItem-1)

func _on_buy_pressed():
	var hasItem = false
	if Global.polen > Global.items[currItem]["Cost"]:
		for i in Global.inventory: 
			if Global.inventory[i]["Name"] == Global.items[currItem]["Name"]:
				Global.Inventory[i]["Count"] += 1
				hasItem = true
		if hasItem == false:
			var tempDic = Global.items[currItem]
			tempDic["Count"] = 1
			Global.inventory[Global.inventory.size()] = tempDic
		Global.polen -= Global.items[currItem]["Cost"]
