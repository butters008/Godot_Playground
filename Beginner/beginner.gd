extends Node2D

#Vars can be declared as instance and/or global...I think global
var test = "string"
var speed : int = 5
#This is how I figured it out to get the node
@export var testSprite : Sprite2D

func _ready():
	_basicVarsAndMethods()
	
func _process(delta):
	rotate_and_move_sprite()
	
# If you do not do the -> at the end, it is shorthand for void
func _basicVarsAndMethods() -> void:
	#variables can be dynamic
	var dynamicVar = "start with string"
	print(dynamicVar)
	dynamicVar = 4
	print(dynamicVar)
	dynamicVar = 5.56
	print(dynamicVar)
	dynamicVar = [1, 2, 3]
	print(dynamicVar)
	dynamicVar = "Back to String"
	print(dynamicVar)

	print("\n--------------------\n")

	#We can make a var be constrained to a type, which I think I would perfer
	var strictVar : String = "strict var"
	var strictVar2 : int = 3
	var strictArray : Array = [3, 8, 9]
	print(strictVar)
	print(strictVar2)
	print(strictArray)
	for i in strictArray:
		print(i)
	
	
	
func rotate_and_move_sprite():
	#There are two different ways from clear code to get the
	$Sprite2D.rotation_degrees += 5
	$Sprite2D.position.x += speed
	
	if($Sprite2D.rotation_degrees > 180):
		$Sprite2D.rotation_degrees = 0
		
	if	$Sprite2D.position.x > 1000:
		speed = -5
	elif $Sprite2D.position.x < -200:
		speed = 5
	
