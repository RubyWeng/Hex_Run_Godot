extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible=false
	position=Vector2(-573,-324)
	
	var canvas_rid=get_canvas_item()
	RenderingServer.canvas_item_set_z_index(canvas_rid,100)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_restart_button_pressed() -> void:
	visible=false
	get_tree().reload_current_scene()
	Score.score_val=0
	Score.update_score()

func _on_back_button_pressed() -> void:
	visible=false
	Score.score_val=0
	Score.update_score()
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

func _on_quit_button_pressed() -> void:
	get_tree().quit()
