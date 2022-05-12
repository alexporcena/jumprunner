extends Control

var controle_acao = 0

func _ready():
	GameData.criar_arquivo()
	
	if GameData.pega_valor("telacheia") == 1:
		OS.window_fullscreen = true
		
	if GameData.pega_valor("musica") == 1:
		$AudioStreamPlayer.play()

func _on_ButtonSair_pressed():
	controle_acao = 1
	play_audio()

func _on_ButtonJogar_pressed():
	controle_acao = 2
	play_audio()

func _on_ButtonConfiguracoes_pressed():
	controle_acao = 3
	play_audio()

func _on_AudioBotao_finished():
	if controle_acao == 1:
		get_tree().quit()
	elif controle_acao == 2:
		get_tree().change_scene("res://cenas/Jogo.tscn")
	elif controle_acao == 3:
		get_tree().change_scene("res://cenas/UIConfiguracoes.tscn")

func play_audio():
	if GameData.pega_valor("sons") == 1:
		$AudioBotao.play()
	else:
		$AudioBotao.volume_db = -100
		$AudioBotao.play()
