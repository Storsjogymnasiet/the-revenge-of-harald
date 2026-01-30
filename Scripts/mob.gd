extends Entity

const preload_mob_type = preload("res://Scripts/mob_type.gd")


class Mob extends Entity:
	var type = "Slime"
	var mob_type = preload_mob_type.new()
	
	func _init(_type) -> void:
		type = _type
		initialize_stats()
	
	func initialize_stats():
		stats = mob_type.mob_type[type]


func _ready() -> void:
	pass # Replace with function body.



func _process(delta: float) -> void:
	pass
