extends Node2D
@onready var intro = preload("res://hotel_intro.dialogue")
func _ready():
	DialogueManager.show_dialogue_balloon(intro, "start")
func _process(_float) -> void:
	if e.hotel_intro_ended:
		get_tree().change_scene_to_file("res://node_2d.tscn")
