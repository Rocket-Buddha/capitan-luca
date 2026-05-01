extends CanvasLayer

@export_range(0.0, 100.0, 5.0) var placeholder_fuel := 75.0
@export var placeholder_light_years := 12.4
@export var placeholder_orbital_charges := 3

@onready var fuel_bar = $Root/FuelBar
@onready var light_year_counter = $Root/LightYearCounter
@onready var orbital_button: Button = $Root/OrbitalButton


func _ready() -> void:
	_apply_placeholder_values()


func _apply_placeholder_values() -> void:
	# Keep the placeholder state isolated in the HUD until gameplay data exists.
	fuel_bar.set_fuel_percent(placeholder_fuel)
	light_year_counter.set_light_years(placeholder_light_years)
	orbital_button.text = "CALCULO ORBITAL x%d" % placeholder_orbital_charges
