extends Node2D

var Map = preload("res://Minimap.tscn")



var id = 1;

func _ready():
	process_priority = -100
	Global.set_map(id)
	print ("Mapa: ", Global.get_map())

func _input(_event):
	if Input.is_action_just_pressed("ui_map"):
		if not has_node("Minimap"):
			var map = Map.instance()
			add_child(map)
			get_tree().paused = true
