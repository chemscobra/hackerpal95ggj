extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var infect_c = 2
var infect_t = 0.5

var infected = false
var coords = Vector2(0, 0)
var hackerexe

var diff = "hard"

var active = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	$Sprite.frame = 5
	set_process(false)
	pass

func activate():
	$Sprite.frame = 0
	active = true

func infect():
	infected = true
	$NodeLabel.text = "xx.xx.xx.xx"
	$Sprite.frame = 1
	set_process(true)

func _process(delta):
	infect_t -= delta
	if infect_t < 0:
		infect_t = 0.5
		$Sprite.frame = infect_c
		infect_c += 1
		
		if infect_c == 5:
			set_process(false)