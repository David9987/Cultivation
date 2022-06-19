extends Node

var item_scene = preload("res://src/scenes/items/Item.tscn")

#BASE ADD SCRIPT
func add(scene, parent, pos = null):
	var object = scene.instance()
	if pos != null:
		object.global_position = pos
	Methods.add(parent,object)
	pass

#ADD ITEM TO SCENE
func addItem(parent,pos): add(item_scene, parent,pos)
