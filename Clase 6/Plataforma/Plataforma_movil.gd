extends Node2D

##Este Script muestra algunas de las funcionalidades de varios nodos Control,
##Camera2D y de audio.

#Posición inicial del Jugador
@onready var pos_inicial : Vector2 = $Jugador.global_position

##Función process, se llama en cada cuadro.
func _process(delta):
	_mover_plataforma(delta)

#Mueve la plataforma flotante
func _mover_plataforma(delta):
	$Path2D/PathFollow2D.progress += 500*delta

#Cuando el jugador cae fuera de la pantalla, se vuelve a ubicar en la pantalla visible.
func _on_area_2d_body_entered(body):
	$Jugador.global_position = pos_inicial

##Imprime un mensaje cuando se presiona el botón.
func _on_button_pressed():
	print("Boton en el CanvasLayer presionado")

##Cuando se ingresa un nombre para el jugador
func _on_line_edit_text_submitted(new_text):
	$Jugador/LabelJugador.text = new_text
