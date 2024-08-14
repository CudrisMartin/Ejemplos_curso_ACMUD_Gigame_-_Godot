extends Node

func recuperar_jugador(body):
	$Mundo/Tutoriales/RL_Salvacion.show()
	$Mundo/Jugador_AP.global_position = $Mundo/Escenario/Recuperacion.global_position
