class_name InGameShip
extends Node3D

const SHIP_TEXTURE_PATH := "res://assets/in-game/ship-triangle-pixel-v02.png"

@export var ship_scale := 0.25
@export var initial_orbit_angle := 0.0

@onready var visual: MeshInstance3D = $Visual

var orbit_planet: InGamePlanet
var _orbit_angle := 0.0


func _ready() -> void:
	_orbit_angle = initial_orbit_angle
	_setup_visual()


func _process(delta: float) -> void:
	if orbit_planet == null:
		return

	_orbit_angle = wrapf(_orbit_angle + orbit_planet.orbit_speed * delta, 0.0, TAU)
	_update_orbit_transform()


func set_orbit_planet(planet: InGamePlanet) -> void:
	orbit_planet = planet
	if orbit_planet != null:
		_update_orbit_transform()


func _setup_visual() -> void:
	visual.mesh = _build_triangle_mesh()
	scale = Vector3.ONE * ship_scale
	visual.rotation = Vector3.ZERO

	var material := StandardMaterial3D.new()
	var ship_texture := load(SHIP_TEXTURE_PATH) as Texture2D
	if ship_texture != null:
		material.albedo_texture = ship_texture
		material.texture_filter = BaseMaterial3D.TEXTURE_FILTER_NEAREST
	else:
		material.albedo_color = Color(0.98, 0.74, 0.28)
	material.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	material.cull_mode = BaseMaterial3D.CULL_DISABLED
	visual.material_override = material


func _update_orbit_transform() -> void:
	position = orbit_planet.get_orbit_position(_orbit_angle)
	var tangent := orbit_planet.get_orbit_tangent(_orbit_angle)
	rotation = Vector3(0.0, 0.0, atan2(tangent.y, tangent.x) - PI / 2.0)


func _build_triangle_mesh() -> ArrayMesh:
	var mesh := ArrayMesh.new()
	var arrays := []
	arrays.resize(Mesh.ARRAY_MAX)

	arrays[Mesh.ARRAY_VERTEX] = PackedVector3Array([
		Vector3(0.0, 0.42, 0.0),
		Vector3(-0.3, -0.24, 0.0),
		Vector3(0.3, -0.24, 0.0),
	])
	arrays[Mesh.ARRAY_NORMAL] = PackedVector3Array([
		Vector3(0.0, 0.0, 1.0),
		Vector3(0.0, 0.0, 1.0),
		Vector3(0.0, 0.0, 1.0),
	])
	arrays[Mesh.ARRAY_TEX_UV] = PackedVector2Array([
		Vector2(0.5, 0.04),
		Vector2(0.06, 0.92),
		Vector2(0.94, 0.92),
	])
	arrays[Mesh.ARRAY_INDEX] = PackedInt32Array([0, 1, 2])

	mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, arrays)
	return mesh
