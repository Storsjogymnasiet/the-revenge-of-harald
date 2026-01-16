extends Entity

const preload_race_stats = preload("res://Scripts/race_stats.gd")

class Player extends Entity:
	var direction
	var race = "Human"
	var race_stats = preload_race_stats.new()
	
	
	func _init(_race) -> void:
		race = _race
		initialize_stats()
	
	func initialize_stats():
		stats = race_stats.race_stats[race]

############################################

var player = Player.new("Human")
func _ready() -> void:
		$Label.text = "speed: %s" % str(player.stats["Speed"])
	
func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * player.stats["Speed"]
	move_and_slide()
