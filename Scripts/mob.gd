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

@export var Goal: Node = null

var mob = Mob.new("Slime")
func _ready() -> void:
	$NavigationAgent2D.target_position = Goal.global_position 

func _physics_process(delta: float) -> void:
	if !$NavigationAgent2D.is_target_reached():
			var nav_point_direction = to_local($NavigationAgent2D.get_next_path_position()).normalized()
			velocity = nav_point_direction * mob.stats["Speed"]
			move_and_slide()

func _on_timer_timeout() -> void:
	if $NavigationAgent2D.target_position != Goal.global_position: 
		$NavigationAgent2D.target_position = Goal.global_position
