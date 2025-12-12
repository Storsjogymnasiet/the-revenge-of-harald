extends Button
@onready var button: Button = $"../Button"
@onready var button_2: Button = $"../Button2"
@onready var button_3: Button = $"../Button3"
@onready var color_rect: ColorRect = $"../ColorRect"

func _on_pressed() -> void:
	button_2.set_visible(false)
	button_3.set_visible(true)
