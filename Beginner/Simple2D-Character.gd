extends CharacterBody2D


@export var speed = 22000

func get_movement_input(delta):
	#get_vector is for 2D-8D movement, since it wants the following
	#-x, x, -y, y -> left, right, up, down -> up is negative since -y is up
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed * delta
	
	#Printing out the vector for getting the input
	print(input_direction)

func _physics_process(delta):
	get_movement_input(delta)
	move_and_slide()
	
	if (Input.is_action_pressed("action")):
		print("Shoot!")

	if (Input.is_action_pressed("sec_action")):
		print("Gernade")
#You can control click on objects/keywords to bring up the docs for that object	
#Input #Used the Input object as an example
