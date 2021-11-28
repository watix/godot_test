extends Node2D

signal space_key_was_pressed(name)

func _process(delta):
	if Input.is_action_just_pressed("space_key"):
		emit_signal("space_key_was_pressed", "melon")


func _on_space_key_was_pressed(name):
	print(name)
