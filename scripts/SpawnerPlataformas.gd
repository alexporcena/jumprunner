extends Node2D

onready var Plataforma = load("res://cenas/Plataforma.tscn")
var posicao_anterior = Vector2.ZERO
var plataforma_inicial = true
var top_down = 0

func _ready():
	randomize()
	sort_plataforma(25)

func sort_plataforma(celulas):
	
	var instancia_plataforma = Plataforma.instance()

	if plataforma_inicial:
		posicao_anterior = Vector2(0, 120)
	else:
		top_down = randi() % 2 #Valor = 0 (acima) ou = 1 (abaixo)
		
		if top_down == 0:
			posicao_anterior = Vector2(240, max(60, posicao_anterior.y - 20))
		else:
			posicao_anterior = Vector2(240, min(120, posicao_anterior.y + 20))
		
	instancia_plataforma.position = posicao_anterior
	instancia_plataforma.criar_plataforma(celulas)
	add_child(instancia_plataforma)

	
	var sorteia_queda = randi() % 10
	
	if sorteia_queda > 7 and not plataforma_inicial:
		instancia_plataforma.derruba_plataforma()
	
	if plataforma_inicial:
		plataforma_inicial = false
	else:
		instancia_plataforma.criar_moedas(celulas)

func _on_Timer_timeout():
	
	var celulas = randi() % 5 + 1
	
	sort_plataforma(celulas)
