extends Node2D

#Vars can be declared as instance and/or global...I think global
var test = "string"

func _ready():
	_basicVarsAndMethods()
	
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
	
