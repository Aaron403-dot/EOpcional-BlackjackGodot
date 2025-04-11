extends Node

var clic = false
var numeroCartas = 52
var EtiquetaCartas
var Cartas = [52]
var manoJugador = [12]
var crupier = [12]
var Carta
var Instanciar
var X = 0
var Y = 0
var Inicio = true
var LadoCrupier
var LadoJugador


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EtiquetaCartas = $Camera2D/TextureRect/interfazJuego/Fondo/margenContenedor/HBoxContainer/VBoxContainer/nCartas
	EtiquetaCartas.set_text(String.num_int64(numeroCartas))
	Carta = load("res://CartaObj.tscn")
	
	LadoCrupier = $Camera2D/TextureRect/interfazJuego/Fondo/margenContenedor/HBoxContainer/VBoxContainer3/BoxContainer
	LadoJugador = $Camera2D/TextureRect/interfazJuego/Fondo/margenContenedor/HBoxContainer/VBoxContainer3/BoxContainer2
	pass

func GenerarMazo():
	var Corazon = ["A-C", "2-C", "3-C", "4-C", "5-C", "6-C", "7-C", "8-C", "9-C", "10-C", "J-C", "Q-C", "K-C"]
	var Pica = ["A-P", "2-P", "3-P", "4-P", "5-P", "6-P", "7-P", "8-P", "9-P", "10-P", "J-P", "Q-P", "K-P"]
	var Trebol = ["A-T", "2-T", "3-T", "4-T", "5-T", "6-T", "7-T", "8-T", "9-T", "10-T", "J-T", "Q-T", "K-T"]
	var Diamante = ["A-D", "2-D", "3-D", "4-D", "5-D", "6-D", "7-D", "8-D", "9-D", "10-D", "J-D", "Q-D", "K-D"]
	
	pass

func entregaCartas() -> void:
	
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Camera2D/TextureRect/interfazJuego/Fondo/margenContenedor/HBoxContainer/VBoxContainer/nCartas.set_text(String.num_int64(numeroCartas))
	
	pass

func generarCarta():
	numeroCartas -=1
	Instanciar = Carta.instantiate()
	Instanciar.value = 5
	Instanciar.TipoCarta = "Pica"
	LadoCrupier.add_child(Instanciar)
	
	pass

func AleatoriaCarta():
	
	
	pass


func _on_hit_button_down() -> void:
	generarCarta()

	
	pass # Replace with function body.


func _on_fold_button_down() -> void:

	pass # Replace with function body.
