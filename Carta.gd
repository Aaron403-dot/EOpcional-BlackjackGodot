extends Node

enum{Diamante,Pica,Corazon,Trebol}
var value="A"
var valorEnCarta
var cartaBG
var TipoCarta


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	valorEnCarta = $StaticBody2D/Label
	cartaBG = $StaticBody2D/CollisionShape2D/Sprite2D
	setValue()
	pass
	
func setValue()->void:
#	valorEnCarta.set
	match TipoCarta:
		"Diamante":
			cartaBG.set_texture(load("res://Icons/Diamante.png"))
		"Pica":
			cartaBG.set_texture(load("res://Icons/Pica.png"))
		"Trebol":
			cartaBG.set_texture(load("res://Icons/Trebol.png"))
		"Corazon":
			cartaBG.set_texture(load("res://Icons/Corazon.png"))
	valorEnCarta.set_text(value)
		
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
