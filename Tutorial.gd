extends Control


func _ready():
	MusicController.play_music()

func _on_Button_pressed():
	get_tree().change_scene("res://Maps/MapA.tscn")
