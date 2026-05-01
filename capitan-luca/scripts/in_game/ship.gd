class_name InGameShip
extends Node3D

@export var initial_orbit_angle: float = 0.0
@export_node_path("Node3D") var orbit_planet_path: NodePath

var orbit_planet: InGamePlanet = null
var _orbit_angle: float = 0.0


func _ready() -> void:
	_orbit_angle = initial_orbit_angle
	if not orbit_planet_path.is_empty():
		orbit_planet = get_node_or_null(orbit_planet_path) as InGamePlanet
	if orbit_planet != null:
		_update_orbit_transform()


func _process(delta: float) -> void:
	if orbit_planet == null:
		return

	_orbit_angle = wrapf(_orbit_angle + orbit_planet.orbit_speed * delta, 0.0, TAU)
	_update_orbit_transform()


func _update_orbit_transform() -> void:
	position = orbit_planet.get_orbit_position(_orbit_angle)
	var tangent: Vector3 = orbit_planet.get_orbit_tangent(_orbit_angle)
	rotation = Vector3(0.0, 0.0, atan2(tangent.y, tangent.x) - PI / 2.0)
