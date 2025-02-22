extends Area2D


@export var enemy_speed = 400

func _process(delta):

	position.y += enemy_speed * delta

func _on_timer_timeout():
	pass # Replace with function body.
