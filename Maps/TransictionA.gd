extends Node2D
onready var transition = get_node("Transition/Fill")
onready var animation = get_node("Transition/Fill/animation")

export (int, "Pixels") var transition_type
export (float, 2.0) var duration = 1.0

func _ready() -> void:
	transition.material.set_shader_param("type", transition_type)
	animation.playback_speed = duration



