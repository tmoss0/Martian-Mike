extends Control

@export var first_level: PackedScene = null

func _on_start_pressed() -> void:
	get_tree().change_scene_to_packed(first_level)

func _on_quit_pressed() -> void:
	get_tree().quit()
