extends TextureButton

@onready var confirmation_dialogue = $"Confirmation Dialogue"
@onready var yes_button = $"Confirmation Dialogue/HBoxContainer/yes"
@onready var no_button = $"Confirmation Dialogue/HBoxContainer/no"

func _ready():
	confirmation_dialogue.visible = false

func _on_easy_pressed() -> void:
	confirmation_dialogue.visible = true

func _on_yes_pressed() -> void:
	get_tree().change_scene_to_file("res://easy add 1.tscn")
