extends Control

func _ready():
	if GameData.pega_valor("telacheia") == 1:
		OS.window_fullscreen = true
	
	GameData.criar_arquivo()

func _on_ButtonSair_pressed():
	get_tree().quit()

func _on_ButtonJogar_pressed():
	get_tree().change_scene("res://cenas/Jogo.tscn")

func _on_ButtonConfiguracoes_pressed():
	get_tree().change_scene("res://cenas/UIConfiguracoes.tscn")
