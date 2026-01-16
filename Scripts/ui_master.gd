extends  Control
@onready var start: Button = $Start
@onready var settings: Button = $Settings
@onready var exit: Button = $Exit
@onready var color_rect: ColorRect = $".."
@onready var mute: Button = $mute
@onready var back: Button = $back
var muted = false

func resett():
	start.visible = false
	settings.visible = false
	exit.visible = false
	mute.visible = false
	back.visible = false
	showw()


func hidde():
	start.visible = false
	settings.visible = false
	exit.visible = false
	
func showw():
	start.visible = true
	settings.visible = true
	exit.visible = true
	
func settingse():
	back.visible = true
	mute.visible = true

func _on_start_pressed() -> void:
	hidde()
	color_rect.visible = false

func _on_settings_pressed() -> void:
	hidde()
	settingse()

func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_mute_pressed() -> void:
	if muted == false:
		muted = true
		mute.text = "muted on"
	else:
		muted = false
		mute.text = "muted off"
		


func _on_back_pressed() -> void:
	resett()
	showw()
