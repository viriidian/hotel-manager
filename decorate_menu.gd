extends Control
@onready var moneyamount = $RichTextLabel

func _on_button_pressed() -> void:
	if e.money >= 800:
		e.money -= 800
		e.add_bed = true
func _process(_float) -> void:
	moneyamount.text = "coins:	" + str(e.money)
