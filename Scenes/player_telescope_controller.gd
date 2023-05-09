extends Node2D


@onready var cam = $Camera2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Constants.last_player_pos != null:
		self.position = Constants.last_player_pos


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	move(delta)



func move(delta: float):
	var up = Input.get_axis("move_up", "move_down")
	if (up == -1 and not self.position.y > cam.limit_top) || (up == 1 and 
		not self.position.y < cam.limit_bottom):
		up = 0
		
	var down = Input.get_axis("move_left", "move_right")
	if (down == -1 and not self.position.x > cam.limit_left) || (down == 1 and 
		not self.position.x <= cam.limit_right):
		down = 0
	
	
	self.position += Vector2(down, up).normalized() * delta * 400
	Constants.last_player_pos = self.position
