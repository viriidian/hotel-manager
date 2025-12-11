extends Node2D
@onready var timer = $Timer
@onready var npc_preload = preload("res://npc.tscn")
var npc
var timerstarted: bool = false
func _process(_float) -> void:
	if not timerstarted:
		timer.start()
		timerstarted = true
func _on_timer_timeout() -> void:
	timerstarted = false
	npc = npc_preload.instantiate()
	add_child(npc)
