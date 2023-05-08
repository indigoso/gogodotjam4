extends Node

var title_screen = preload("res://Scenes/title_screen.tscn")
var about_screen = preload("res://Scenes/about_screen.tscn")
var intro_screen = preload("res://Scenes/game_intro.tscn")

var current_scene = null

# Called when the node enters the scene tree for the first time.
func _ready():
	current_scene = title_screen.instantiate()
	add_child(current_scene)
	current_scene.toggle_screen.connect(swap_screen)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func perform_swap(new_screen):
	remove_child(current_scene)
	current_scene = new_screen.instantiate()
	add_child(current_scene)

func swap_screen(screen_title: String):
	match screen_title:
		Constants.SCREEN_PLAY:
			perform_swap(intro_screen)
			current_scene.return_to_menu.connect(swap_screen)
		Constants.SCREEN_ABOUT:
			perform_swap(about_screen)
			current_scene.go_back.connect(swap_screen)
		Constants.SCREEN_QUIT:
			get_tree().quit()
		Constants.SCREEN_TITLE:
			perform_swap(title_screen)
			current_scene.toggle_screen.connect(swap_screen)
