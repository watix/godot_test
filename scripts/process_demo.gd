extends Node2D

var sprite = null
var speed = 200
var Block : PackedScene = preload("res://block_demo.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	var block = Block.instance()
	add_child(block)
	block.global_position = Vector2(200,100)
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
		print("enfin")
		sprite = Block.instance()
		add_child(sprite)
		sprite.name = "MyTestSprite"
		sprite.global_position = get_global_mouse_position()
