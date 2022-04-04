extends Control

func _on_ButtonMenu_pressed():
	get_tree().change_scene("res://cenas/UIMenu.tscn")

func _on_ButtonJogar_pressed():
	get_tree().change_scene("res://cenas/Jogo.tscn")

func _on_ButtonSair_pressed():
	get_tree().quit()
