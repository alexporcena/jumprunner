extends Node2D

onready var Moeda = preload("res://cenas/Moeda.tscn")
var cair = false
const VELOCIDADE_PLATAFORMA = -100
const VELOCIDADE_QUEDA = 200

func _ready():
	randomize()

func criar_plataforma(celulas):
	$TileMap.set_cell(0, 0, 0)

	for celula in celulas:
		$TileMap.set_cell(celula + 1, 0, 1)

	$TileMap.set_cell(celulas + 1, 0, 2)
	
func _physics_process(delta):
	
	if cair:
		position.y += VELOCIDADE_QUEDA * delta
	
	position.x += VELOCIDADE_PLATAFORMA * delta

func criar_moedas(celulas):
	var instancia_moeda = Moeda.instance()
	var posicao_x = randi() % (celulas + 2)
	instancia_moeda.position = Vector2(posicao_x * 12 + 3, -6)
	add_child(instancia_moeda)


func _on_Timer_timeout():
	cair = true
	
func derruba_plataforma():
	$Timer.start()
	$TileMap.modulate = Color(1.0, 0.0, 0.0)
