extends Control

const FUEL_STEP := 5.0
const OUTLINE_COLOR := Color(1.0, 1.0, 1.0, 1.0)
const FILL_COLOR := Color(1.0, 1.0, 1.0, 1.0)
const DEFAULT_BAR_SIZE := Vector2(340.0, 24.0)
const BORDER_WIDTH := 2.0
const INNER_PADDING := 3.0

@export_range(0.0, 100.0, 5.0) var fuel_percent := 75.0
@export var bar_size := DEFAULT_BAR_SIZE


func _ready() -> void:
	fuel_percent = _quantize_fuel_percent(fuel_percent)
	custom_minimum_size = bar_size
	_sync_visuals()


func set_fuel_percent(value: float) -> void:
	fuel_percent = _quantize_fuel_percent(value)
	if is_node_ready():
		_sync_visuals()


func _draw() -> void:
	var bar_rect := Rect2(Vector2.ZERO, bar_size)
	var inner_rect := bar_rect.grow(-INNER_PADDING)
	var fill_width := inner_rect.size.x * (fuel_percent / 100.0)

	draw_rect(bar_rect, OUTLINE_COLOR, false, BORDER_WIDTH)
	if fill_width <= 0.0:
		return
	draw_rect(Rect2(inner_rect.position, Vector2(fill_width, inner_rect.size.y)), FILL_COLOR, true)


func _sync_visuals() -> void:
	queue_redraw()


func _quantize_fuel_percent(value: float) -> float:
	var snapped_value: float = round(value / FUEL_STEP) * FUEL_STEP
	return clampf(snapped_value, 0.0, 100.0)
