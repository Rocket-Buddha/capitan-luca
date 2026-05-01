class_name GameFuelBar
extends Control

@export_range(0.0, 100.0, 5.0) var fuel_percent: float = 75.0
@export_range(0.0, 100.0, 1.0) var fuel_step: float = 5.0
@export var outline_color: Color = Color(1.0, 1.0, 1.0, 1.0)
@export var fill_color: Color = Color(1.0, 1.0, 1.0, 1.0)
@export var border_width: float = 2.0
@export var inner_padding: float = 3.0


func _ready() -> void:
	fuel_percent = _quantize_fuel_percent(fuel_percent)
	_sync_visuals()


func set_fuel_percent(value: float) -> void:
	fuel_percent = _quantize_fuel_percent(value)
	if is_node_ready():
		_sync_visuals()


func _draw() -> void:
	var current_size: Vector2 = size if size != Vector2.ZERO else custom_minimum_size
	var bar_rect: Rect2 = Rect2(Vector2.ZERO, current_size)
	var inner_rect: Rect2 = bar_rect.grow(-inner_padding)
	var fill_width: float = inner_rect.size.x * (fuel_percent / 100.0)

	draw_rect(bar_rect, outline_color, false, border_width)
	if fill_width <= 0.0 or inner_rect.size.x <= 0.0 or inner_rect.size.y <= 0.0:
		return
	draw_rect(Rect2(inner_rect.position, Vector2(fill_width, inner_rect.size.y)), fill_color, true)


func _sync_visuals() -> void:
	queue_redraw()


func _quantize_fuel_percent(value: float) -> float:
	if fuel_step <= 0.0:
		return clampf(value, 0.0, 100.0)
	var snapped_value: float = round(value / fuel_step) * fuel_step
	return clampf(snapped_value, 0.0, 100.0)
