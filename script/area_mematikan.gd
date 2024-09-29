extends Area2D


@onready var timer = $Timer
func _on_body_entered(body):
	Engine.time_scale = 0.4
	body.get_node("CollisionShape2D").queue_free()
	print("Kamu Meninggal☠️")
	timer.start()
	



func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
