extends Node2D

const VELOCIDADE_PLATAFORMA = -100

func criar_plataforma(celulas):
	$TileMap.set_cell(0, 0, 0)

	for celula in celulas:
		$TileMap.set_cell(celula + 1, 0, 1)

	$TileMap.set_cell(celulas + 1, 0, 2)
	
func _physics_process(delta):
	position.x += VELOCIDADE_PLATAFORMA * delta
