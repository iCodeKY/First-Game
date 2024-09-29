extends  AnimatedSprite2D


const SPEED = 60
var direction = 1
@onready var ray_cast_kanan = $RayCastKanan;
@onready var ray_cast_kiri = $RayCastKiri;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_kanan.is_colliding():
		direction = 1
		print("Kena tembok, arah diubah kearah kiri")
	if ray_cast_kiri.is_colliding():
		direction = -1
		print("Kena tembok, arah diubah kearah kanan")
		
	
	
	position.x +=  direction * SPEED * delta 
