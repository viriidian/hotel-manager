extends Sprite2D
@onready var timer = $Timer
var pos = Vector2(508,443)

func _process(delta):
	position = position.move_toward(pos, delta * 200)
	if position.distance_to(pos) <= 0.01:
		hide()
