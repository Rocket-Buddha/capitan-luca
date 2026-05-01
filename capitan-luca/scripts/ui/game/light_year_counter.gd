extends Control

@export var light_years := 12.4
@export var unit_text := "AL"

@onready var value_label: Label = $Readout/ValueLabel
@onready var unit_label: Label = $Readout/UnitMargin/UnitLabel


func _ready() -> void:
	_sync_visuals()


func set_light_years(value: float) -> void:
	light_years = maxf(value, 0.0)
	if is_node_ready():
		_sync_visuals()


func _sync_visuals() -> void:
	value_label.text = "%.1f" % light_years
	unit_label.text = unit_text
