class_name HudOrbitalButton
extends TextureButton

@export_range(0.0, 1.0, 0.05) var idle_alpha: float = 0.92
@export_range(0.0, 1.0, 0.05) var hover_alpha: float = 1.0
@export_range(0.0, 1.0, 0.05) var pressed_alpha: float = 0.78
@export_range(0.0, 1.0, 0.05) var disabled_alpha: float = 0.42
@export_range(0, 3, 1) var available_charges: int = 3
@export var hide_when_empty: bool = false

@onready var charge_badge: Panel = $ChargeBadge
@onready var charge_label: Label = $ChargeBadge/ChargeLabel

var _is_hovered: bool = false
var _is_pressed: bool = false
var _is_externally_visible: bool = true


func _ready() -> void:
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	button_down.connect(_on_button_down)
	button_up.connect(_on_button_up)
	_sync_state()


func set_available_charges(value: int) -> void:
	available_charges = clampi(value, 0, 3)
	if is_node_ready():
		_sync_state()


func set_button_visible(is_visible: bool) -> void:
	_is_externally_visible = is_visible
	if is_node_ready():
		_sync_state()


func _on_mouse_entered() -> void:
	_is_hovered = true
	_sync_visual_state()


func _on_mouse_exited() -> void:
	_is_hovered = false
	_is_pressed = false
	_sync_visual_state()


func _on_button_down() -> void:
	_is_pressed = true
	_sync_visual_state()


func _on_button_up() -> void:
	_is_pressed = false
	_sync_visual_state()


func _sync_state() -> void:
	var is_visible_by_state: bool = not hide_when_empty or available_charges > 0
	disabled = available_charges <= 0
	visible = _is_externally_visible and is_visible_by_state
	charge_badge.visible = is_visible_by_state
	charge_label.text = "%d" % available_charges
	_sync_visual_state()


func _sync_visual_state() -> void:
	if disabled:
		_apply_alpha(disabled_alpha)
		return
	if _is_pressed:
		_apply_alpha(pressed_alpha)
		return
	_apply_alpha(hover_alpha if _is_hovered else idle_alpha)


func _apply_alpha(alpha: float) -> void:
	modulate = Color(1.0, 1.0, 1.0, alpha)
