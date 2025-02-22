extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if GameState.is_game_over:
		self.visible = true
	if GameState.is_game_over && Input.is_action_just_pressed("restart_game"):
		GameState.reset_state()
		get_tree().reload_current_scene()
