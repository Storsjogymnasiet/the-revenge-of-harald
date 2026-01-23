@abstract class_name Entity

extends CharacterBody2D

var stats = {
	"Health": 100, 
	"Max_health": 100,
	"Physical_defense": 100, 
	"Magical_defense": 100, 
	"Physical_attack": 100, 
	"Magical_attack": 100, 
	"Mana": 100, 
	"Speed": 100, 
	"Size": 100
}

func is_dead():
	if stats.Health <= 0:
		return true

func calculate_damage(damage, damage_type):
	var defense = stats.Physical_defense if damage_type == "physical" else stats.Magical_defense
	damage -= defense
	if damage > 0:
		take_damage(damage)

func take_damage(damage):
	stats.Health -= damage
	if stats.Health > stats.Max_health:
		stats.health = stats.Max_health
	elif stats.Health < 0:
		stats.health = 0
