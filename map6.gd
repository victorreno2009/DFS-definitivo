extends TileMap


var Map = preload("res://Minimap.tscn")

var visited = Global.visited
var current_level_name




var id = 3;

func _ready():

	Global.set_map(id)
	print ("Mapa: ", Global.get_map())
		
		
	
	
	
func _input(_event):
	if Input.is_action_just_pressed("ui_map"):
		if not has_node("Minimap"):
			var map = Map.instance()
			add_child(map)
			get_tree().paused = true
