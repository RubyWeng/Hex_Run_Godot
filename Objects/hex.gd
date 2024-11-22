extends StaticBody2D

var my_scale = 6
var delta_scale = 0.8

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("Hex")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	scale=Vector2(my_scale,my_scale)
	my_scale = my_scale-delta_scale * delta
	if my_scale<=0.1:
		queue_free()


func _on_score_box_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		Score.score_val += 1
		Score.update_score()
