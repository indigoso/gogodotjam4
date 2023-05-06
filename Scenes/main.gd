extends Node

var title_screen = preload("res://Scenes/title_screen.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var title = title_screen.instantiate()
	add_child(title)
	title.toggle_screen.connect(swap_screen)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func swap_screen(screen_title: String):
	match screen_title:
		Constants.SCREEN_PLAY:
			pass
		Constants.SCREEN_ABOUT:
			pass
		Constants.SCREEN_QUIT:
			get_tree().quit()
