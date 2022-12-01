extends ColorRect

var visited = Global.visited
var map = Global.map




func blink():
	if map == 2:
		$LevelA/Blink.visible = true
	if map == 6:
		$LevelB/Blink.visible = true
	if map == 9:
		$LevelC/Blink.visible = true
	if map == 4:
		$LevelD/Blink.visible = true
	if map == 5:
		$LevelE/Blink.visible = true
	if map == 10:
		$LevelF/Blink.visible = true
	if map == 11:
		$LevelG/Blink.visible = true
	if map == 3:
		$LevelH/Blink.visible = true
	if map == 7:
		$LevelI/Blink.visible = true
	if map == 1:
		$LevelJ/Blink.visible = true
		
func _ready():
	blink()
	

func _input(_event):
	if Input.is_action_just_pressed("ui_map"):
		get_tree().paused = false
		self.queue_free()
