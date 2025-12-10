extends Node2D
@onready var bed = $"/root/node2d/layer_holder/bed"
@onready var animation = $AnimationPlayer
func _ready():
	bed.hide()
	if e.tutorial:
		animation.play("tutorial")
func _process(_float) -> void:
	if e.add_bed:
		bed.show()
