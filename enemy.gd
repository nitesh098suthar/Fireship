extends Area2D


@export var enemy_speed = 400

func _process(delta):
	position.y += enemy_speed * delta
	var viewport_y = get_viewport_rect().size.y
	if position.y >= viewport_y + 100:
		queue_free()
		print("destroyed the enemey")

func _on_timer_timeout():
	pass # Replace with function body.
