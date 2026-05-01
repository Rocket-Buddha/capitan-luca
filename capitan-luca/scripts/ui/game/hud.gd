class_name GameHUD
extends CanvasLayer

signal pause_requested
signal orbital_requested

@onready var fuel_bar: GameFuelBar = $Root/FuelBar
@onready var light_year_counter: LightYearCounter = $Root/LightYearCounter
@onready var pause_button: HudPauseButton = $Root/PauseButton
@onready var orbital_button: HudOrbitalButton = $Root/OrbitalButton


func _ready() -> void:
	pause_button.pressed.connect(_on_pause_button_pressed)
	orbital_button.pressed.connect(_on_orbital_button_pressed)


func set_fuel_percent(value: float) -> void:
	fuel_bar.set_fuel_percent(value)


func set_light_years(value: float) -> void:
	light_year_counter.set_light_years(value)


func set_orbital_charges(value: int) -> void:
	orbital_button.set_available_charges(value)


func set_orbital_button_visible(is_visible: bool) -> void:
	orbital_button.set_button_visible(is_visible)


func _on_pause_button_pressed() -> void:
	pause_requested.emit()


func _on_orbital_button_pressed() -> void:
	orbital_requested.emit()
