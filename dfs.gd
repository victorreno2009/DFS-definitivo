extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var adjacency_list = [
#sala 0
	[6,7,15],
#sala 1
	[9,5,13,2],
#sala 2
	[7,6],
#sala 3
	[9,2],
#sala 4
	[12,6],
#sala 5
	[5,13,10,0],
#sala 6
	[6,12],
#sala 7
	[12],
#sala 8
	[12],
#sala 9
	[2],
]

var searched_rooms = []

func dfs(current_room):
	for room in adjacency_list[current_room]:
		if(!searched_rooms.has(room)):
			searched_rooms.append(room)
			dfs(room)

# Called when the node enters the scene tree for the first time.
func _ready():
	dfs(0)
	print(searched_rooms)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
