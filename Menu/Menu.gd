extends Control


func _on_ButtonStart_pressed():
	get_tree().change_scene("res://Tutorial.tscn")


func _on_ButtonQuit_pressed():
	get_tree().quit()
