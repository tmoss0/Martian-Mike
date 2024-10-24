extends ParallaxBackground

@export var bg_texture: CompressedTexture2D = preload("res://assets/textures/bg/Purple.png")
@export var scroll_speed = 15
@onready var sprite = $ParallaxLayer/Sprite2D

func _ready() -> void:
	sprite.texture = bg_texture

func _process(delta: float) -> void:
	sprite.region_rect.position += delta * Vector2(scroll_speed, scroll_speed)
	# Prevents the position values from increasing to a huge number
	if sprite.region_rect.position >= Vector2(64, 64):
		sprite.region_rect.position = Vector2.ZERO
