extends TextureButton

@onready var miEscena = preload("res://scenes/Blocks/Red/BlockRed.tscn")

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _on_button_down() -> void:
	_generate_block()

func _generate_block():
	var instancia = miEscena.instantiate()
	add_child(instancia)
