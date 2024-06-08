extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#This is the full path of the target node
	print($Sprite2D/Sprite2D2/Sprite2D3/Target)
	#This is the use of Unique name, right click on node and click on option
	#use Unique Name
	print(%Target)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
