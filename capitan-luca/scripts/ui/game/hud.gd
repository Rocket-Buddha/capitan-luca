extends CanvasLayer

@export_range(0.0, 100.0, 5.0) var placeholder_fuel := 75.0
@export var placeholder_distance := "12.4 AL"
@export var placeholder_orbital_charges := 3

@onready var fuel_bar = $Root/FuelBar
@onready var distance_value_label: Label = $Root/DistancePanel/DistanceContent/DistanceValueLabel
@onready var orbital_button: Button = $Root/OrbitalButton


func _ready() -> void:
	_apply_placeholder_values()


func _apply_placeholder_values() -> void:
	# Keep the placeholder state isolated in the HUD until gameplay data exists.
	fuel_bar.set_fuel_percent(placeholder_fuel)
	distance_value_label.text = placeholder_distance
	orbital_button.text = "CALCULO ORBITAL x%d" % placeholder_orbital_charges
