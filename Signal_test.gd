extends Node2D

onready var sprite = $Sprite
func create_sprite():
	var new_timer = Timer.new()
	new_timer.autostart = true
	var new_sprite = Sprite.new()
	add_child(new_sprite)
	add_child(new_timer)
	new_timer.connect("timeout", self, "_on_Timer_timeout", [new_sprite])
	new_sprite.texture = load("res://icon.png")
	new_sprite.name = "MyTestSprite"
	new_sprite.global_position = get_global_mouse_position()

func _on_Timer_timeout(target_sprite):
	target_sprite.visible = !target_sprite.visible
func _ready():
	pass
func _process(delta):
	if Input.is_action_just_pressed("left_click"):
		create_sprite()
