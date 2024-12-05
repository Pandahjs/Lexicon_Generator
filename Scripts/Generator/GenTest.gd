extends Node2D

class_name GenTest

func _ready() -> void:
	var temp: Node2D = Generator.gen()
	add_child(temp)
