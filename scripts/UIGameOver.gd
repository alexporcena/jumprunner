extends Control

func _ready():
	$LabelPontuacao.text = str(GameData.pega_valor("ultima_pontuacao")) + "  PONTOS"
	$LabelRecorde.text = "RECORDE  " + str(GameData.pega_valor("recorde"))
	
	if GameData.pega_valor("musica") == 1:
		$AudioStreamPlayer.play()

func _on_ButtonMenu_pressed():
	get_tree().change_scene("res://cenas/UIMenu.tscn")

func _on_ButtonJogar_pressed():
	get_tree().change_scene("res://cenas/Jogo.tscn")

func _on_ButtonSair_pressed():
	get_tree().quit()
