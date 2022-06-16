extends Node2D

onready var transition_pos = $"Trigger-Switch/Position2D".global_position
onready var player = $"YSort/Sample-Player"

func _ready():
	if Globals.transition_states['playground'] == 1:
		player.global_position = transition_pos


func _on_TriggerSwitch_body_entered(body):
	if body.is_in_group('player'):
		Globals.transition_states['old_forest'] = 1
		get_tree().change_scene("res://Placeholder-Playground/Old-Forest.tscn")
