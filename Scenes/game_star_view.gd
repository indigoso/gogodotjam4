extends Node2D

signal return_to_desk

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("return_to_desk"):
		emit_signal("return_to_desk", Constants.SCREEN_DESK)
