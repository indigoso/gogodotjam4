extends Area2D

@export_enum("Satellite", "Asteroid", "Planet") var obj_type: int

@onready var sprite = $Sprite2D

var asteroid_sprite = preload("res://Assets/meteorBrown_big1.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	match obj_type:
		0:
			pass
		1:
			sprite.texture = asteroid_sprite
		2:
			pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
