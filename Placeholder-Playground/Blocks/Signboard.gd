extends StaticBody2D

export(String) var Message = ''
onready var message_board = $UI/Label
onready var UI = $UI
# Called when the node enters the scene tree for the first time.
func _ready():
	if Message == '':
		$TriggerArea/CollisionShape2D.disabled = true
	message_board.text = Message
	UI.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TriggerArea_body_entered(body):
	if body.is_in_group('player'):
		UI.visible = true


func _on_TriggerArea_body_exited(body):
	if body.is_in_group('player'):
		UI.visible = false
