extends Node

@export var enemy_tscn : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	var new_enemy = enemy_tscn.instantiate()
	var viewport_x = get_viewport().get_visible_rect().size.x
	new_enemy.position.x = randf_range(0, viewport_x)
	new_enemy.position.y = -100
	add_child(new_enemy)
