extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	var label = get_node("Label")
	label.text = "Notengotiempo"
	print(label.get_total_character_count())
	print("Hello World!")
