extends Area2D

# dont add this ready if you spawn the laser because the new spawn laser will follow the position which is mentioned in the ready function of the laser not the position which is mentioned in the player (spawner)

#func _ready():
	#var viewport_x_laser = get_viewport_rect().size.x
	#var viewport_y_laser = get_viewport_rect().size.y
	#position.x = viewport_x_laser/2
	#position.y = viewport_y_laser -100

@export var speed = 600

func _process(delta):
	position.y -= speed * delta;
	if position.y <= -100:
		queue_free()
		print("this is destroyed")

