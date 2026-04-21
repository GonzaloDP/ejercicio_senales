extends TextureButton

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _on_button_down() -> void:
	get_tree().call_group("blocks","_delete" )
