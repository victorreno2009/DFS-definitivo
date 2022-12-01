extends Control


func _on_ButtonStart_pressed():
	get_tree().change_scene("res://Maps/MapA.tscn")


func _on_ButtonQuit_pressed():
	get_tree().quit()
