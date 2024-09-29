extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -300.0

@onready var animated_sprite_2d = $AnimatedSprite2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("Lompat") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("Gerak_kiri", "Gerak_kanan")
	
	#ngecek input apakah kekanan atau kekiri 1,0,1
	
	
	#Ngeflip karakternya
	if direction > 0:
		animated_sprite_2d.flip_h = false
	elif direction < 0 :
		animated_sprite_2d.flip_h = true
	#Aplikasikan Mov
	
	# Mutar Animasinya
	if is_on_floor():
		if direction == 0 :
			animated_sprite_2d.play("PasDiam")
		else : 
			animated_sprite_2d.play("Lari")
	else : 
			animated_sprite_2d.play("Lompat")
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
