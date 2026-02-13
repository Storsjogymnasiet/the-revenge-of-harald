extends Entity

const preload_race_stats = preload("res://Scripts/race_stats.gd")
const preload_role_multiplier = preload("res://Scripts/role_multiplier.gd")

class Player extends Entity:
	var direction
	var race = "Human"
	var race_stats = preload_race_stats.new()
	var role = "Swordsman"
	var role_multiplier = preload_role_multiplier.new()
	
	
	func _init(_race, _role) -> void:
		race = _race
		role = _role
		initialize_stats()
		
	
	func initialize_stats():
		stats = {}
		stats["Heath"] = race_stats.race_stats[race]["Max_health"] * role_multiplier.role_multiplier[role]["Max_health"]
		stats["Max_heath"] = race_stats.race_stats[race]["Max_health"] * role_multiplier.role_multiplier[role]["Max_health"]
		stats["Mana"] = race_stats.race_stats[race]["Max_mana"] * role_multiplier.role_multiplier[role]["Max_mana"]
		stats["Physical_defense"] = race_stats.race_stats[race]["Physical_defense"] * role_multiplier.role_multiplier[role]["Physical_defense"]
		stats["Magical_defense"] = race_stats.race_stats[race]["Magical_defense"] * role_multiplier.role_multiplier[role]["Magical_defense"]
		stats["Physical_attack"] = race_stats.race_stats[race]["Physical_attack"] * role_multiplier.role_multiplier[role]["Physical_attack"]
		stats["Magical_attack"] = race_stats.race_stats[race]["Magical_attack"] * role_multiplier.role_multiplier[role]["Magical_attack"]
		stats["Speed"] = race_stats.race_stats[race]["Speed"] * role_multiplier.role_multiplier[role]["Speed"]
		stats["Size"] = race_stats.race_stats[race]["Size"]
		stats["Level"] = race_stats.race_stats[race]["Level"]
		stats["Experience_points"] = race_stats.race_stats[race]["Experience_points"]

############################################

var player = Player.new("Gnome", "Swordsman")
func _ready() -> void:
		$Label.text = "speed: %s" % str(player.stats["Speed"])
	
func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * player.stats["Speed"]
	move_and_slide()
