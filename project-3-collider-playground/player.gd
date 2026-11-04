extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()





func _on_cowabunga_zone_body_entered(body: Node2D) -> void:
	print("I'm totally tubular!")


func _on_tidal_wave_body_entered(body: Node2D) -> void:
	print("I died.")


func _on_cowabunga_zone_body_exited(body: Node2D) -> void:
	print("I'm not totally tubular anymore...")


func _on_tidal_wave_body_exited(body: Node2D) -> void:
	print("I'm alive!")
