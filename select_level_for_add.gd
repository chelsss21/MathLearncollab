extends Control

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Select Mode.tscn")


@onready var confirmation_dialogue_easy = $"Confirmation Dialogue easy"
@onready var yes_button = $"Confirmation Dialogue easy/HBoxContainer/yes for easy"
@onready var no_button = $"Confirmation Dialogue easy/HBoxContainer/no for easy"
func _ready():
	confirmation_dialogue_easy.visible = false
	confirmation_dialogue_medium.visible = false
	confirmation_dialogue_hard.visible = false
	
func _on_easy_pressed() -> void:
	confirmation_dialogue_easy.visible = true
func _on_no_for_easy_pressed() -> void:
	get_tree().change_scene_to_file("res://Select Level for add.tscn")
func _on_yes_pressed() -> void:
	get_tree().change_scene_to_file("res://easy add 1.tscn")




@onready var confirmation_dialogue_medium = $"Confirmation Dialogue medium"
@onready var yes_button_medium = $"Confirmation Dialogue medium/HBoxContainer/yes for medium"
@onready var no_button_medium = $"Confirmation Dialogue medium/HBoxContainer/no for medium"
func _on_medium_pressed() -> void:
	confirmation_dialogue_medium.visible = true
func _on_no_for_medium_pressed() -> void:
	get_tree().change_scene_to_file("res://Select Level for add.tscn")
func _on_yes_for_medium_pressed() -> void:
	get_tree().change_scene_to_file("res://medium add 1.tscn")



@onready var confirmation_dialogue_hard = $"Confirmation Dialogue hard"
@onready var yes_button_hard = $"Confirmation Dialogue hard/HBoxContainer/yes for hard"
@onready var no_button_hard = $"Confirmation Dialogue hard/HBoxContainer/no for hard"

func _on_hard_pressed() -> void:
	confirmation_dialogue_hard.visible = true
func _on_no_for_hard_pressed() -> void:
	get_tree().change_scene_to_file("res://Select Level for add.tscn")
func _on_yes_for_hard_pressed() -> void:
	get_tree().change_scene_to_file("res://hard add 1.tscn")
