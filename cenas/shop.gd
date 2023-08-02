extends CanvasLayer


func _on_button_pressed():
	get_node("AnimationPlayer").play("TransOut")

