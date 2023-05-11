extends Node2D


signal enter_telescope

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_btn_enable_telescope_pressed() -> void:
	emit_signal("enter_telescope", Constants.SCREEN_TELE)
