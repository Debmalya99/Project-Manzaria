extends Node2D

onready var KeepExitPosition = $"YSort/Ruined-Keep/Position2D".global_position

func _ready():
	if Globals.transition_states['old_forest'] == 0:
		$"YSort/Sample-Player".global_position = $"Trigger-Area/Position2D".global_position
	elif Globals.transition_states['old_forest'] == 1:
		$"YSort/Sample-Player".global_position = KeepExitPosition


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TriggerArea_body_entered(body):
	if body.is_in_group('player'):
		Globals.transition_states['playground'] = 1
		get_tree().change_scene("res://Placeholder-Playground/Playground.tscn")
