extends Control



func _on_beginner_scene_pressed():
	get_tree().change_scene_to_file("res://Beginner/beginner.tscn")

func _on_simple_2d_character_pressed():
	get_tree().change_scene_to_file("res://Beginner/Simple2D-Character.tscn")


func _on_d_physics_pressed():
	get_tree().change_scene_to_file("res://Beginner-Physics/Physics-Demo.tscn")
