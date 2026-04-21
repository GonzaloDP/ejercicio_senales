extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

@onready var emisorRed = $RedGenerator
@onready var emisorViolet = $VioletGenerator
@onready var reset = $Reset

func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	emisorRed.button_down.connect(_count_new_instance)
	emisorViolet.button_down.connect(_count_new_instance)
	reset.button_down.connect(_delete)
	pass

func _count_new_instance():
	instancesCount += 1
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)

func _delete():
	instancesCount = 0
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
