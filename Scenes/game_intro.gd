extends Node2D

signal return_to_menu

var script_index = 0

var intro_script = [
	"The last left on a dying world, it is now your time to return home..."
	,"Boarding your escape pod, you leave your old home behind..."
	,"However, the journey will be perilous. It is up to you to survive."
]

@onready var expo = $CanvasLayer/CenterContainer/VBoxContainer/lblExposition
@onready var cont = $CanvasLayer/CenterContainer/VBoxContainer/btnContinue
@onready var anim = $AnimationPlayer

func update_script():
	expo.text = intro_script[script_index]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_script()
	reset_button()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func reset_button():
	anim.play("btnContinueModulate")


func _on_btn_continue_pressed() -> void:
	if script_index < len(intro_script) - 1:
		script_index += 1
	else:
		emit_signal("return_to_menu", Constants.SCREEN_TITLE)
	update_script()	
	reset_button()
