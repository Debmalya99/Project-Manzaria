extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if Globals.transition_states['old_forest'] == 0:
		$"YSort/Sample-Player".global_position = $"Trigger-Area/Position2D".global_position


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TriggerArea_body_entered(body):
	if body.is_in_group('player'):
		Globals.transition_states['playground'] = 1
		get_tree().change_scene("res://Placeholder-Playground/Playground.tscn")
