extends HBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _physics_process(delta):
	rect_position.y += 20 *delta
	


func _on_VisibilityNotifier2D_screen_exited():
	get_parent().call_deferred("move_child",self,0)
	rect_position = Vector2(0,-64)
