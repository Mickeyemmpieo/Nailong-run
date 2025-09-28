extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -700.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui2_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui2_left", "ui2_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func die():
	print("Player has died. Reloading scene...")
	get_tree().reload_current_scene()
	
func _on_death_body_entered(body: Node2D) -> void:
	pass # Replace with function body.

func _on_death_pit_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		body.die()  # This assumes your Player has a `die()` function
