extends Node2D

var sprite = null
var speed = 200
# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.

func _process(delta):
	if Input.is_action_pressed("move_down"):
		sprite.position.y += speed * delta
	if Input.is_action_pressed("move_up"):
		sprite.position.y -= speed * delta
	if Input.is_action_pressed("move_right"):
		sprite.position.x += speed * delta
	if Input.is_action_pressed("move_left"):
		sprite.position.x -= speed * delta
#	if Input.is_action_just_pressed("right_click"):
	if Input.is_action_just_pressed("left_click"):
		sprite = Sprite.new()
		add_child(Sprite.new())
		sprite.name = "MyTestSprite"
		sprite.texture = load("res://icon.png")
		sprite.global_position = get_global_mouse_position()
