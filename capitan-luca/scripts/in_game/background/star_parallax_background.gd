extends CanvasLayer

const SCREEN_SIZE := Vector2(1080.0, 1920.0)

const FAR_TEXTURE_PATH := "res://assets/in-game/background/stars-far-v01.png"
const MID_TEXTURE_PATH := "res://assets/in-game/background/stars-mid-v01.png"
const NEAR_TEXTURE_PATH := "res://assets/in-game/background/stars-near-v01.png"

@onready var far_layer: Parallax2D = $FarLayer
@onready var far_sprite: Sprite2D = $FarLayer/Sprite
@onready var mid_layer: Parallax2D = $MidLayer
@onready var mid_sprite: Sprite2D = $MidLayer/Sprite
@onready var near_layer: Parallax2D = $NearLayer
@onready var near_sprite: Sprite2D = $NearLayer/Sprite


func _ready() -> void:
	_setup_layer(
		far_layer,
		far_sprite,
		FAR_TEXTURE_PATH,
		Vector2(-1.5, 0.5),
		Color(1.0, 1.0, 1.0, 0.9)
	)
	_setup_layer(
		mid_layer,
		mid_sprite,
		MID_TEXTURE_PATH,
		Vector2(-3.0, 1.1),
		Color(1.0, 1.0, 1.0, 0.4)
	)
	_setup_layer(
		near_layer,
		near_sprite,
		NEAR_TEXTURE_PATH,
		Vector2(-4.5, 1.8),
		Color(1.0, 1.0, 1.0, 0.55)
	)


func _setup_layer(
	parallax_layer: Parallax2D,
	sprite: Sprite2D,
	texture_path: String,
	autoscroll: Vector2,
	tint: Color
) -> void:
	var texture := load(texture_path) as Texture2D
	if texture == null:
		return

	parallax_layer.follow_viewport = false
	parallax_layer.ignore_camera_scroll = true
	parallax_layer.autoscroll = autoscroll
	parallax_layer.repeat_size = SCREEN_SIZE
	parallax_layer.repeat_times = 2

	sprite.texture = texture
	sprite.centered = false
	sprite.position = Vector2.ZERO
	sprite.region_enabled = true
	sprite.region_rect = Rect2(Vector2.ZERO, SCREEN_SIZE)
	sprite.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	sprite.texture_repeat = CanvasItem.TEXTURE_REPEAT_ENABLED
	sprite.modulate = tint
