extends RigidBody3D



func _on_area_3d_body_entered(body):
	print(body)
	# The direction to the player body.
	var direction = global_position.direction_to(body.global_position)
	# The location normalized of where the player is in relation to the front
	# of the enemy
	var facing = global_transform.basis.tdotz(direction)
	var fov = cos(deg_to_rad(70))
	print(facing)
	print(fov)
	if facing > fov:
		print("In field of vision")
	else:
		print("I can't see you!")
