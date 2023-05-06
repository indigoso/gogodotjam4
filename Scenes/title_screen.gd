extends Control

@onready var label_title = $CenterContainer/VBoxContainer/lblTitle

signal toggle_screen(screen_name)

# Called when the node enters the scene tree for the first time.
func _ready():
	label_title.text = Constants.GAME_TITLE + " " + Constants.GAME_VERSION


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_btn_play_pressed():
	emit_signal("toggle_screen", Constants.SCREEN_PLAY)


func _on_btn_about_pressed():
	emit_signal("toggle_screen", Constants.SCREEN_ABOUT)


func _on_btn_quit_pressed():
	emit_signal("toggle_screen", Constants.SCREEN_QUIT)
