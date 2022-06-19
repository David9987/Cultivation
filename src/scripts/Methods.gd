extends Node

#ADD CHILD
func add(parent,child):
	parent.call_deferred("add_child",child)
