extends PathFollow2D

## Esta escena genera un nodo que sigue un camino, y se adorna segun las especificaciones de su
## propio objeto carro

## Instancia del objeto Carro que contiene los datos especidicos de este carro.
var obCarro := Carro.new(str(randi_range(1000,9999)),randi_range(0,3))

func _ready():
	
	## Se obtienen los valores del objeto carro para decorar el carro.
	$Label.text = obCarro.ver_datos_carro()
	$Sprite2D.modulate = obCarro.color
	$Sprite2D.frame = obCarro.marca

## El movimiento del carro se da segun la propia velocidad del objeto Carro.
func _process(delta):
	progress += obCarro.velocidad * delta
