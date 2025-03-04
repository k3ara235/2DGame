extends Node2D

const speed = 60
@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_right = $RayCastRight
@onready var animated_sprite = $AnimatedSprite2D

var direction = 1

func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h= true 
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h=false
	position.x += direction * speed * delta
