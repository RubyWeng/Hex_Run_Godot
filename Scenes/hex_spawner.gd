extends Timer

var hex_scene=preload("res://Objects/hex.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	call_deferred("spawn_hex")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func spawn_hex():
	var hex_node=hex_scene.instantiate()
	var rng=randi_range(0,11)
	hex_node.rotation=PI/6*rng
	get_tree().current_scene.add_child(hex_node)


func _on_timeout() -> void:
	spawn_hex()
