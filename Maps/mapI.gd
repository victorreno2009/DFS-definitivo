extends Node2D


var id = 7;

func _ready():
	Global.set_map(id)
	print ("Mapa: ", Global.get_map())

var Map = preload("res://Minimap.tscn")

func _input(_event):
	if Input.is_action_just_pressed("ui_map"):
		if not has_node("Minimap"):
			var map = Map.instance()
			add_child(map)
			get_tree().paused = true
