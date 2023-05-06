extends Control

signal toggle_screen(screen_name)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_btn_play_pressed():
	emit_signal("toggle_screen", Constants.SCREEN_PLAY)


func _on_btn_about_pressed():
	emit_signal("toggle_screen", Constants.SCREEN_ABOUT)


func _on_btn_quit_pressed():
	emit_signal("toggle_screen", Constants.SCREEN_QUIT)
