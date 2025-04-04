extends Control

signal señal

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
#	$Fondo/margenContenedor/HBoxContainer/VBoxContainer/Hit.connect("button_down", self, "_on_hit_button_down")
#
#	$Fondo/margenContenedor/HBoxContainer/VBoxContainer2/Fold.connect("button_down",self,"_on_fold_button_down")
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _input(event: InputEvent):
	if event is InputEventMouseButton and event.is_pressed():
		if $Fondo/margenContenedor/HBoxContainer/VBoxContainer/Hit.get_rect().has_point(event.position):
			emit_signal("señal","Hit")
		elif $Fondo/margenContenedor/HBoxContainer/VBoxContainer2/Fold.get_rect().has_point(event.position):
			emit_signal("señal","Fold")
		

func _on_hit_button_down():
	emit_signal("señal","Hit")


func _on_fold_button_down():
	emit_signal("señal","Fold")
	pass # Replace with function body.
