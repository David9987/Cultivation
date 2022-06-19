extends KinematicBody2D

#PHYSICS
var vel = Vector2()
var speed = 500
var dir = 0

func _process(delta):
	_movement()

#MOVEMENT
func _movement():
	dir = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	vel.x = move_toward(vel.x, dir * speed, 30)
	move_and_slide(vel, Vector2.UP)
