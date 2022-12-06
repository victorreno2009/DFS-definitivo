extends ColorRect

var visited = Global.visited
var map = Global.map




func blink():
	if map == 0:
		$LevelA/Blink.visible = true
	if map == 1:
		$LevelB/Blink.visible = true
	if map == 2:
		$LevelC/Blink.visible = true
	if map == 3:
		$LevelD/Blink.visible = true
	if map == 4:
		$LevelE/Blink.visible = true
	if map == 5:
		$LevelF/Blink.visible = true
	if map == 6:
		$LevelG/Blink.visible = true
	if map == 7:
		$LevelH/Blink.visible = true
	if map == 8:
		$LevelI/Blink.visible = true
	if map == 9:
		$LevelJ/Blink.visible = true
		
func _ready():
	blink()
	

func _input(_event):
	if Input.is_action_just_pressed("ui_map"):
		get_tree().paused = false
		self.queue_free()
