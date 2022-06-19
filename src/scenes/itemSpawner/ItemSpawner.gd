extends Node2D

onready var item_holder = get_parent().get_node("Items")

func _ready():
	pass

#SPAWN_ITEM
func spawnItem():
	Scenes.addItem(item_holder, getScreenPos())
	pass

#GET RANDOMISE POSITION
func getScreenPos():
	randomize()
	var view = get_viewport_rect().size.x
	var pos = Vector2(rand_range(0,view),-20)
	return pos


# SPAWN AT END OF TIMER
func _on_Timer_timeout():
	spawnItem()
	pass # Replace with function body.
