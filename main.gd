extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func restart_game():
	get_tree().reload_current_scene()

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_R:
			restart_game()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
