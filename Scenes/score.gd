extends Control

var score_val = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position=Vector2(-575,-320)
	var canvas_rid=get_canvas_item()
	RenderingServer.canvas_item_set_z_index(canvas_rid,100)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func update_score():
	$Label.text=str(score_val)
	
