extends Area2D

func _ready():
	$AnimatedSprite.play("padrao")

func _on_Moeda_body_entered(body):
	if body is Personagem:
		$AnimatedSprite.play("final")
		body.pontuacao()


func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "final":
		queue_free()
