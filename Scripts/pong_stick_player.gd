extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta):
	#set direction movement
	var direction = Input.get_axis("w", "s")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
