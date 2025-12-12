extends Button
@onready var button: Button = $"."
@onready var button_2: Button = $"../Button2"
@onready var button_3: Button = $"../Button3"
@onready var button_4: Button = $"../Button4"
@onready var color_rect: ColorRect = $"../ColorRect"

func _on_pressed() -> void:
	color_rect.set_visible(false)
	button.set_visible(false)
	button_3.set_visible(false)
	button_4.set_visible(false)
	button_2.set_visible(false)
