extends Node3D

@onready var planet: InGamePlanet = $Planet
@onready var ship: InGameShip = $Ship


func _ready() -> void:
	ship.set_orbit_planet(planet)
