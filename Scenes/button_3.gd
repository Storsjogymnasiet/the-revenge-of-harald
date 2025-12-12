extends Button
@onready var button_3: Button = $"."

var presseded = false


func _on_pressed() -> void:
	if presseded == true:
		button_3.text = "audio on"
		presseded = false
	else:
		button_3.text = "audio off"
		presseded = true
