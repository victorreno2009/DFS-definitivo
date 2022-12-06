extends Area2D



func _on_Passagem_1__3_body_entered(body):
	animation.play("transition1")
	get_tree().change_scene("res://Maps/MapI.tscn")
