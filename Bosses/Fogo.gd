extends StaticBody2D


var flip = true
var posicao_inicial
var posicao_final
var velocidade = 1


func _ready():
	$AnimatedSprite.play("Andar")
	posicao_inicial = $".".position.x
	posicao_final = posicao_inicial + 200

func _process(delta):
	
	if(posicao_inicial <= posicao_final and flip):
		$".".position.x += velocidade
		$AnimatedSprite.flip_h = false
		if($".".position.x >= posicao_final):
			flip = false
	
	if($".".position.x >= posicao_inicial and !flip):
		$".".position.x -= velocidade
		$AnimatedSprite.flip_h = true
		if($".".position.x <= posicao_inicial):
			flip = true


func _on_MataFogo_body_entered(body):
	pass # Replace with function body.
