extends TextureButton

@export_range(0.0, 1.0, 0.05) var idle_alpha: float = 1.0
@export_range(0.0, 1.0, 0.05) var hover_alpha: float = 1.0
@export_range(0.0, 1.0, 0.05) var pressed_alpha: float = 0.8

var _is_hovered: bool = false


func _ready() -> void:
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	button_down.connect(_on_button_down)
	button_up.connect(_on_button_up)
	_apply_alpha(idle_alpha)


func _on_mouse_entered() -> void:
	_is_hovered = true
	_apply_alpha(hover_alpha)


func _on_mouse_exited() -> void:
	_is_hovered = false
	_apply_alpha(idle_alpha)


func _on_button_down() -> void:
	_apply_alpha(pressed_alpha)


func _on_button_up() -> void:
	_apply_alpha(hover_alpha if _is_hovered else idle_alpha)


func _apply_alpha(alpha: float) -> void:
	modulate = Color(1.0, 1.0, 1.0, alpha)
