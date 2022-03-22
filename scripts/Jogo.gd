extends Node2D

func _on_GameOverArea_body_entered(body):
	if body is Personagem:
		get_tree().change_scene("res://cenas/Jogo.tscn")
