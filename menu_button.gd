extends MenuButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var button = Button.new()
	button.text = "Start"
	button.pressed.connect(_on_start_pressed)
	add_child(button)
	
func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://lvl1.tscn")
	#$Fade_transition/fade_timer.start()
	#$Fade_transition/AnimationPlayer.play("fade_in")
	
	


		
