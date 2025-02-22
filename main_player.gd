extends Area2D

@export var player_laser_tscn : PackedScene

func _ready():
	var viewport_x = get_viewport_rect().size.x
	var viewport_y = get_viewport_rect().size.y
	position.x = viewport_x/2
	position.y = viewport_y-100


func _process(delta):
	var cursor_position = get_global_mouse_position()
	#print(cursor_position)
	position.x = cursor_position.x 
	#print(position.x)
	if Input.is_action_just_pressed("fire_laser"):
		var new_laser = player_laser_tscn.instantiate()
		new_laser.position = self.position
		add_sibling(new_laser)


func _on_area_entered(area):
	if area.is_in_group("enemy_group"):
		queue_free()
