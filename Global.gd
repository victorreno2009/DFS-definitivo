extends Node


var map = -10
var count = 0
var minimap
var visited = []
var mapVisited = []

func set_map(var v2):
	map = v2

func get_map():
	return map

func add_count():
	#count+=1
	count +=1
	mapVisited.append(map)


func get_count():
	return count

# a-0 b-1 c-2 d-3 e-4 f-5 g-6 h-7 i-8 j-9
var adjacency_list = [
	# sala 0 a
	[1, 7, 8],
	# sala 1 b
	# [0, 2, 4, 9],
	[2, 4, 9],
	# c
	# [1, 8],
	[8],
	# d
	[5, 6],
	#e
	[3],
	#f
	[],
	#g
	[],
	#h
	[],
	#i
	# [0, 2],
	[],
	#j
	[]
]

var searched_rooms = []
var path = []

func crawl(last_room, current_room):
	print("entrando na sala ", current_room)
	searched_rooms.append(current_room)
	path.append(current_room)
	for room in adjacency_list[current_room]:
		if(!searched_rooms.has(room)):
			crawl(current_room, room)
	print("já abri todas as portas da sala ", current_room)
	print("voltando pra sala ", last_room)
	path.append(last_room)
	return path

func _ready():
	crawl(-1,0)
	print(searched_rooms)
	print(Global.mapVisited)
	
	
	
	


