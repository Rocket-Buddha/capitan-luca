class_name InGamePlanet
extends Node3D

const SIZE_3_POSITION := Vector3(0.0, -3.0492, 0.0)
const PLANET_TEXTURE_PATH := "res://assets/in-game/planet-earth-pixel-v01.png"

@export var orbit_radius := 0.8
@export var orbit_speed := 0.9
@export var orbit_height_scale := 1.0
@export var planet_radius := 0.625
@export var spin_speed := 0.22
@export var axial_tilt_degrees := -23.5

@onready var tilt_pivot: Node3D = $TiltPivot
@onready var visual: MeshInstance3D = $TiltPivot/Visual


func _ready() -> void:
	position = SIZE_3_POSITION
	_setup_visual()


func _process(delta: float) -> void:
	visual.rotate_y(spin_speed * delta)


func get_orbit_position(angle: float) -> Vector3:
	var orbit_offset := Vector3(
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


func _setup_visual() -> void:
	# Keep the axial tilt fixed and rotate the sphere around that axis so the
	# illuminated hemisphere stays coherent with the scene light direction.
	tilt_pivot.rotation_degrees = Vector3(0.0, 0.0, axial_tilt_degrees)

	var sphere := SphereMesh.new()
	sphere.radius = planet_radius
	sphere.height = planet_radius * 2.0
	sphere.radial_segments = 32
	sphere.rings = 16
	visual.mesh = sphere
	visual.rotation = Vector3(0.0, 0.35, 0.0)

	var material := StandardMaterial3D.new()
	var planet_texture := load(PLANET_TEXTURE_PATH) as Texture2D
	if planet_texture != null:
		material.albedo_texture = planet_texture
		material.texture_filter = BaseMaterial3D.TEXTURE_FILTER_NEAREST
	else:
		material.albedo_color = Color(0.16, 0.44, 0.75)
	material.roughness = 0.95
	visual.material_override = material
