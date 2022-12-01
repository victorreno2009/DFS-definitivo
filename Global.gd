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
	if(!mapVisited.has(map)):
		count +=1
		mapVisited.append(map)


func get_count():
	return count


