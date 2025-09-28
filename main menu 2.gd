extends Node

	
	

func _on_quit_pressed() -> void:
	$Fade_transition.show()
	$Fade_transition/fade_timer.start()
	$Fade_transition/AnimationPlayer.play("fade_out")




func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://lvl1.tscn")
	#$Fade_transition/fade_timer.start()
	#$Fade_transition/AnimationPlayer.play("fade_in")
	
	


		
