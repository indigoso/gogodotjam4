extends Node

var title_screen = preload("res://Scenes/title_screen.tscn")
var about_screen = preload("res://Scenes/about_screen.tscn")
var intro_screen = preload("res://Scenes/game_intro.tscn")
var desk_screen = preload("res://Scenes/game_desk_view.tscn")
var tele_screen = preload("res://Scenes/game_star_view.tscn")

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
			perform_swap(desk_screen)
			current_scene.enter_telescope.connect(swap_screen)
		Constants.SCREEN_ABOUT:
			perform_swap(about_screen)
			current_scene.go_back.connect(swap_screen)
		Constants.SCREEN_QUIT:
			get_tree().quit()
		Constants.SCREEN_TITLE:
			perform_swap(title_screen)
			current_scene.toggle_screen.connect(swap_screen)
		Constants.SCREEN_DESK:
			perform_swap(desk_screen)
			current_scene.enter_telescope.connect(swap_screen)
		Constants.SCREEN_TELE:
			perform_swap(tele_screen)
			current_scene.return_to_desk.connect(swap_screen)
