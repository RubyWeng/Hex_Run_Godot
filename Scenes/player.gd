extends CharacterBody2D


const SPEED = 300.0
#const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	#if not is_on_floor():
		#velocity += get_gravity() * delta

	# Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction=Vector2.ZERO
	direction.x=Input.get_axis("ui_left","ui_right")
	direction.y=Input.get_axis("ui_up","ui_down")
	
	velocity=direction.normalized() * SPEED
	
	move_and_slide()
	
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
		
	
	
func _on_hit_box_body_entered(body: Node2D) -> void:
	if body.is_in_group("Hex"):
		queue_free()
		EndMenu.visible=true
		
