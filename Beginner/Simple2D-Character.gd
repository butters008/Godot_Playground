extends CharacterBody2D


@export var speed = 400

func get_input(delta):
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed * delta

func _physics_process(delta):
	get_input(delta)
	move_and_slide()
