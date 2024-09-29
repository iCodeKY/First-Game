extends Node2D

const SPEED = 60

var direction = 1

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var ray_cast_kanan = $RayCastKanan
@onready var ray_cast_kiri = $RayCastKiri

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_kanan.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_kiri.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false

	
	position.x += direction * SPEED * delta 
