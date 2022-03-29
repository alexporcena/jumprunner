extends Control

func _on_ButtonSair_pressed():
	get_tree().quit()

func _on_ButtonJogar_pressed():
	get_tree().change_scene("res://cenas/Jogo.tscn")

func _on_ButtonConfiguracoes_pressed():
	get_tree().change_scene("res://cenas/UIConfiguracoes.tscn")
