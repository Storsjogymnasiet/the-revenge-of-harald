extends Node2D
@onready var level_templet: Node2D = $"../level templet"


func _on_area_2d_body_entered(body: Node2D) -> void:
	level_templet.door_poff()
	queue_free()
