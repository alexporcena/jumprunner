extends Control

func _ready():
	if GameData.pega_valor("musica") == 0:
		$CheckButtonMusica.pressed = false
	else:
		$CheckButtonMusica.pressed = true
	
	if GameData.pega_valor("sons") == 0:
		$CheckButtonSons.pressed = false
	else:
		$CheckButtonSons.pressed = true
	
	if GameData.pega_valor("telacheia") == 0:
		$CheckButtonTelaCheia.pressed = false
	else:
		$CheckButtonTelaCheia.pressed = true

func _on_CheckButtonMusica_toggled(button_pressed):
	if button_pressed == true:
		GameData.altera_valor("musica", 1)
	else:
		GameData.altera_valor("musica", 0)

func _on_CheckButtonSons_toggled(button_pressed):
	if button_pressed == true:
		GameData.altera_valor("sons", 1)
	else:
		GameData.altera_valor("sons", 0)

func _on_CheckButtonTelaCheia_toggled(button_pressed):
	if button_pressed == true:
		GameData.altera_valor("telacheia", 1)
		OS.window_fullscreen = true
	else:
		GameData.altera_valor("telacheia", 0)
		OS.window_fullscreen = false

func _on_ButtonMenu_pressed():
	get_tree().change_scene("res://cenas/UIMenu.tscn")
