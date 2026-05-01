class_name InGamePlanet
extends Node3D

@export var orbit_radius: float = 0.8
@export var orbit_speed: float = 0.9
@export var orbit_height_scale: float = 1.0
@export var spin_speed: float = 0.22

@onready var visual: MeshInstance3D = $TiltPivot/Visual


func _process(delta: float) -> void:
	visual.rotate_y(spin_speed * delta)


func get_orbit_position(angle: float) -> Vector3:
	var orbit_offset: Vector3 = Vector3(
		cos(angle) * orbit_radius,
		sin(angle) * orbit_radius * orbit_height_scale,
		0.0
	)
	return position + orbit_offset


func get_orbit_tangent(angle: float) -> Vector3:
	return Vector3(
		-sin(angle) * orbit_radius,
		cos(angle) * orbit_radius * orbit_height_scale,
		0.0
	)
